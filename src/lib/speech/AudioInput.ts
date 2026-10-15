/**
 * Захват микрофона в браузере.
 *
 * Это НЕ порт AudioInput.kt: в оригинале использовался android.media.AudioRecord,
 * которого в вебе нет. Здесь: getUserMedia → AudioContext → Float32 PCM →
 * микширование в моно → ресемплинг в 16 кГц → Int16.
 *
 * Vosk принимает ровно 16 кГц, моно, Int16 — всё остальное делаем сами.
 */

/** Частота, которую ждёт Vosk. */
export const TARGET_SAMPLE_RATE = 16000;

/** Длительность буфера, отправляемого в распознаватель (~0.1 с при 16 кГц). */
const CHUNK_SAMPLES = 1600;

/** Ошибка с понятным пользователю текстом. */
export class AudioError extends Error {
  constructor(
    message: string,
    readonly kind: 'denied' | 'unavailable' | 'lost' | 'unsupported'
  ) {
    super(message);
    this.name = 'AudioError';
  }
}

export interface AudioInputCallbacks {
  /** Готовый блок PCM: 16 кГц, моно, Int16. */
  onChunk(pcm: Int16Array): void;
  /** Микрофон отвалился после старта. */
  onLost(error: AudioError): void;
}

/**
 * Захват микрофона с приведением к формату Vosk.
 * Не потокобезопасен, использовать с одного «потока» (в JS он один).
 */
export class AudioInput {
  private stream: MediaStream | null = null;
  private context: AudioContext | null = null;
  private source: MediaStreamAudioSourceNode | null = null;
  private processor: ScriptProcessorNode | null = null;
  private silentGain: GainNode | null = null;

  /** Остаток от предыдущего блока, не попавший в целый чанк. */
  private pending: number[] = [];
  private sourceRate = TARGET_SAMPLE_RATE;
  private running = false;

  constructor(private readonly callbacks: AudioInputCallbacks) {}

  get isRunning(): boolean {
    return this.running;
  }

  /** Частота, с которой реально работает микрофон (для отладки). */
  get inputSampleRate(): number {
    return this.sourceRate;
  }

  /** Запрашивает микрофон и начинает выдавать чанки. */
  async open(): Promise<void> {
    if (this.running) return;

    if (!navigator.mediaDevices?.getUserMedia) {
      throw new AudioError(
        'Браузер не поддерживает доступ к микрофону. Нужен Chrome или Edge.',
        'unsupported'
      );
    }

    try {
      this.stream = await navigator.mediaDevices.getUserMedia({
        video: false,
        audio: {
          echoCancellation: true,
          noiseSuppression: true,
          autoGainControl: false,
          channelCount: 1
        }
      });
    } catch (e) {
      throw mapGetUserMediaError(e);
    }

    // Микрофон мог отвалиться (выдернули гарнитуру) — сообщаем наверх
    this.stream.getAudioTracks().forEach((track) => {
      track.addEventListener('ended', () => {
        if (this.running) {
          this.callbacks.onLost(new AudioError('Микрофон отключился', 'lost'));
          void this.close();
        }
      });
    });

    const Ctor: typeof AudioContext =
      window.AudioContext ?? (window as unknown as { webkitAudioContext: typeof AudioContext }).webkitAudioContext;

    if (!Ctor) {
      throw new AudioError('Браузер не поддерживает Web Audio API', 'unsupported');
    }

    this.context = new Ctor();
    // Некоторые браузеры стартуют контекст в suspended — будим
    if (this.context.state === 'suspended') {
      await this.context.resume();
    }

    this.sourceRate = this.context.sampleRate;
    this.source = this.context.createMediaStreamSource(this.stream);

    // ScriptProcessor устарел, но работает везде без отдельного файла-ворклета
    this.processor = this.context.createScriptProcessor(4096, 1, 1);
    this.processor.onaudioprocess = (event: AudioProcessingEvent): void => {
      if (!this.running) return;
      // Берём только нулевой канал: моно
      const input = event.inputBuffer.getChannelData(0);
      this.handleFrame(input);
    };

    // Без подключения к назначению onaudioprocess в части браузеров не вызывается.
    // Гейн в ноль, чтобы не слышать себя.
    this.silentGain = this.context.createGain();
    this.silentGain.gain.value = 0;

    this.source.connect(this.processor);
    this.processor.connect(this.silentGain);
    this.silentGain.connect(this.context.destination);

    this.pending = [];
    this.running = true;
  }

  /** Останавливает захват и освобождает ресурсы. */
  async close(): Promise<void> {
    this.running = false;

    if (this.processor) {
      this.processor.onaudioprocess = null;
      this.processor.disconnect();
      this.processor = null;
    }
    if (this.silentGain) {
      this.silentGain.disconnect();
      this.silentGain = null;
    }
    if (this.source) {
      this.source.disconnect();
      this.source = null;
    }
    if (this.stream) {
      this.stream.getTracks().forEach((t) => t.stop());
      this.stream = null;
    }
    if (this.context) {
      try {
        await this.context.close();
      } catch {
        // Контекст мог быть уже закрыт
      }
      this.context = null;
    }

    this.pending = [];
  }

  /** Обрабатывает кадр: ресемплинг, накопление, выдача чанков. */
  private handleFrame(input: Float32Array): void {
    const resampled = resample(input, this.sourceRate, TARGET_SAMPLE_RATE);

    for (let i = 0; i < resampled.length; i++) {
      this.pending.push(resampled[i]!);
    }

    while (this.pending.length >= CHUNK_SAMPLES) {
      const slice = this.pending.slice(0, CHUNK_SAMPLES);
      this.pending = this.pending.slice(CHUNK_SAMPLES);
      this.callbacks.onChunk(floatToInt16(slice));
    }
  }
}

/**
 * Ресемплинг линейной интерполяцией.
 * Достаточно для Vosk и намеренно не усложняется (качество фильтрации — отдельная задача).
 */
export function resample(input: Float32Array, fromRate: number, toRate: number): Float32Array {
  if (fromRate === toRate || input.length === 0) return input;

  const ratio = fromRate / toRate;
  const outLength = Math.max(1, Math.floor(input.length / ratio));
  const out = new Float32Array(outLength);

  for (let i = 0; i < outLength; i++) {
    const pos = i * ratio;
    const i0 = Math.floor(pos);
    const i1 = Math.min(i0 + 1, input.length - 1);
    const frac = pos - i0;
    out[i] = input[i0]! * (1 - frac) + input[i1]! * frac;
  }

  return out;
}

/** Float32 [-1..1] → Int16 [-32768..32767]. */
export function floatToInt16(input: ArrayLike<number>): Int16Array {
  const out = new Int16Array(input.length);
  for (let i = 0; i < input.length; i++) {
    const v = input[i]!;
    out[i] = Math.max(-32768, Math.min(32767, Math.round(v * 32767)));
  }
  return out;
}

/** Переводит ошибку getUserMedia в понятное сообщение. */
function mapGetUserMediaError(e: unknown): AudioError {
  const name = e instanceof DOMException ? e.name : '';

  switch (name) {
    case 'NotAllowedError':
    case 'SecurityError':
      return new AudioError(
        'Доступ к микрофону запрещён. Разрешите его в настройках браузера.',
        'denied'
      );
    case 'NotFoundError':
    case 'OverconstrainedError':
      return new AudioError('Микрофон не найден.', 'unavailable');
    case 'NotReadableError':
      return new AudioError('Микрофон занят другим приложением.', 'unavailable');
    default:
      return new AudioError(
        e instanceof Error ? e.message : 'Не удалось получить доступ к микрофону',
        'unavailable'
      );
  }
}
