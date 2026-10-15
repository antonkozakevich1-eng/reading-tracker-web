/**
 * Фасад распознавания речи. Аналог StreamingEngine.kt + VoskEngine.kt.
 *
 * Отличия от Android-версии (осознанные, из-за отсутствия этих API в вебе):
 *  - нет отдельного потока: цикл распознавания живёт в колбэке onaudioprocess;
 *  - модель не скачивается и не «инсталлируется» — лежит статикой в public/models;
 *  - вместо loadModel/unloadModel — createModel() из vosk-browser.
 *
 * Что перенесено 1:1 по смыслу:
 *  - session-механизм: колбэки вытесненного запуска дропаются (аналог post());
 *  - AutoGain в пайплайне: сырой Int16 → gain.process() → распознаватель;
 *  - троттлинг onLevel (не чаще ~60 мс);
 *  - дедупликация partial-текста;
 *  - отложенная смена подсказки до конца фразы (pendingContext).
 */

import { AutoGain } from './AutoGain';
import { AudioInput, AudioError, TARGET_SAMPLE_RATE } from './AudioInput';
import { createModel, type Model, type KaldiRecognizer } from 'vosk-browser';

/** Путь к модели. Формат vosk-browser — .tar.gz архив. */
export const DEFAULT_MODEL_URL = './models/vosk-model-small-ru-0.22.tar.gz';

/** Приблизительный размер модели — для прогресса в UI. */
export const MODEL_SIZE_MB = 46;

/** Не чаще этого интервала сообщаем уровень сигнала (мс). */
const LEVEL_THROTTLE_MS = 60;

export interface SpeechListener {
  /** Текущая гипотеза незаконченной фразы. */
  onPartial(text: string): void;
  /** Текст законченной фразы. */
  onFinal(text: string): void;
  /** Уровень сигнала после усиления, 0..1 (для индикатора). */
  onLevel(level: number): void;
  /** Микрофон включился/выключился. */
  onListeningChanged(listening: boolean): void;
  /** Ошибка, не ломающая приложение. */
  onError(message: string): void;
  /** Движок не поднялся вовсе. */
  onEngineFailure(message: string): void;
}

/**
 * Один запуск прослушивания: у каждого свой флаг, чтобы остановленный
 * запуск не ожил при новом старте. Аналог Session в StreamingEngine.
 */
class Session {
  active = true;
}

export class SpeechEngine {
  readonly gain = new AutoGain();

  private model: Model | null = null;
  private recognizer: KaldiRecognizer | null = null;
  private audio: AudioInput | null = null;

  private session: Session | null = null;

  /** Отложенная смена подсказки: применится в конце текущей фразы. */
  private pendingContext: string[] | null = null;
  private currentContext: string[] | null = null;

  private lastPartial = '';
  private lastLevelAt = 0;

  /** Идёт загрузка модели (для прогресса в UI). */
  private loading = false;
  private loadingProgress = 0;

  constructor(private readonly listener: SpeechListener) {}

  get isRunning(): boolean {
    return this.session?.active === true;
  }

  get isModelLoading(): boolean {
    return this.loading;
  }

  /** Прогресс загрузки модели, 0..1. */
  get modelProgress(): number {
    return this.loadingProgress;
  }

  get isModelReady(): boolean {
    return this.model?.ready === true;
  }

  /**
   * Гарантирует, что модель загружена.
   * Прогресс оценивается по скачиванию архива: vosk-browser не отдаёт его сам.
   */
  async ensureModel(url = DEFAULT_MODEL_URL): Promise<void> {
    if (this.model?.ready) return;

    this.loading = true;
    this.loadingProgress = 0;

    try {
      // Качаем архив сами, чтобы показать прогресс и кэшировать его браузером
      await preloadWithProgress(url, (p) => {
        this.loadingProgress = p;
      });

      this.model = await createModel(url, -1);
      this.loadingProgress = 1;
    } finally {
      this.loading = false;
    }
  }

  /** Начинает слушать. Модель должна быть загружена заранее. */
  async start(modelUrl = DEFAULT_MODEL_URL): Promise<void> {
    if (this.isRunning) return;

    const s = new Session();
    this.session = s;
    this.lastPartial = '';
    this.lastLevelAt = 0;

    // Модель грузим до старта микрофона, иначе первые фразы потеряются
    try {
      await this.ensureModel(modelUrl);
    } catch (e) {
      const msg = e instanceof Error ? e.message : 'не удалось загрузить модель';
      s.active = false;
      this.session = null;
      this.post(s, () => this.listener.onEngineFailure(msg));
      return;
    }

    if (!s.active) return;

    // Движок не поднялся — это не ошибка микрофона
    try {
      this.currentContext = this.pendingContext;
      this.pendingContext = null;
      this.recognizer = this.createRecognizer(this.currentContext);
    } catch (e) {
      const msg = e instanceof Error ? e.message : 'распознаватель не создан';
      s.active = false;
      this.session = null;
      this.post(s, () => this.listener.onEngineFailure(msg));
      return;
    }

    this.audio = new AudioInput({
      onChunk: (pcm) => this.handleChunk(s, pcm),
      onLost: (err) => this.handleAudioLost(s, err)
    });

    try {
      await this.audio.open();
    } catch (e) {
      const msg = e instanceof Error ? e.message : 'микрофон недоступен';
      this.cleanup(s);
      this.post(s, () => this.listener.onError(msg));
      this.post(s, () => this.listener.onListeningChanged(false));
      return;
    }

    if (!s.active) {
      this.cleanup(s);
      return;
    }

    this.gain.reset();
    this.post(s, () => this.listener.onListeningChanged(true));
  }

  /** Останавливает прослушивание. Колбэки старого запуска после этого дропаются. */
  stop(): void {
    const s = this.session;
    if (s) s.active = false;
    this.session = null;

    const audio = this.audio;
    if (audio) {
      void audio.close();
    }

    this.destroyRecognizer();

    if (s) {
      this.post(s, () => this.listener.onListeningChanged(false));
    }
  }

  /**
   * Новая подсказка распознавателю (слова вокруг текущего места).
   * Применяется в конце текущей фразы, как в оригинале.
   */
  setContext(words: string[] | null): void {
    this.pendingContext = words;
  }

  /** Чувствительность микрофона 0..100. */
  setSensitivity(value: number): void {
    this.gain.sensitivity = Math.min(Math.max(Math.round(value), 0), 100);
  }

  /** Полное освобождение ресурсов. */
  release(): void {
    this.stop();
    this.destroyRecognizer();

    const m = this.model;
    this.model = null;
    if (m) {
      try {
        m.terminate();
      } catch {
        // Воркер мог быть уже завершён
      }
    }
  }

  // ---------- внутреннее ----------

  private createRecognizer(context: string[] | null): KaldiRecognizer {
    const model = this.model;
    if (!model) throw new Error('модель не загружена');

    // grammar в vosk-browser принимает JSON-строку; на этом этапе подсказка
    // не подключена (отдельная задача), поэтому создаём обычный распознаватель.
    void context;

    const rec = new model.KaldiRecognizer(TARGET_SAMPLE_RATE);
    rec.setWords(false);

    rec.on('result', (message) => {
      if (message.event === 'result' && 'result' in message && 'text' in message.result) {
        const text = message.result.text ?? '';
        this.handleFinal(text);
      }
    });

    rec.on('partialresult', (message) => {
      if (message.event === 'partialresult' && 'result' in message && 'partial' in message.result) {
        const partial = message.result.partial ?? '';
        this.handlePartial(partial);
      }
    });

    rec.on('error', (message) => {
      if (message.event === 'error' && 'error' in message) {
        const s = this.session;
        const msg = message.error;
        if (s) this.post(s, () => this.listener.onError(msg));
      }
    });

    return rec;
  }

  private destroyRecognizer(): void {
    const rec = this.recognizer;
    this.recognizer = null;
    if (rec) {
      try {
        rec.remove();
      } catch {
        // мог быть уже удалён
      }
    }
  }

  /** Блок PCM: усиление → распознаватель. */
  private handleChunk(s: Session, pcm: Int16Array): void {
    if (!s.active) return;

    const rec = this.recognizer;
    if (!rec) return;

    // AutoGain работает на месте, как в оригинале
    const level = this.gain.process(pcm, pcm.length);

    const now = Date.now();
    if (now - this.lastLevelAt >= LEVEL_THROTTLE_MS) {
      this.lastLevelAt = now;
      const l = level;
      this.post(s, () => this.listener.onLevel(l));
    }

    // vosk-browser ждёт Float32 [-1..1]; конвертируем из Int16
    const floats = new Float32Array(pcm.length);
    for (let i = 0; i < pcm.length; i++) {
      floats[i] = pcm[i]! / 32768;
    }

    try {
      rec.acceptWaveformFloat(floats, TARGET_SAMPLE_RATE);
    } catch (e) {
      const msg = e instanceof Error ? e.message : 'ошибка распознавания';
      this.post(s, () => this.listener.onError(msg));
    }
  }

  private handlePartial(partial: string): void {
    const s = this.session;
    if (!s || !s.active) return;
    if (partial === this.lastPartial) return;

    this.lastPartial = partial;
    if (partial.trim().length > 0) {
      this.post(s, () => this.listener.onPartial(partial));
    }
  }

  private handleFinal(text: string): void {
    const s = this.session;
    if (!s || !s.active) return;

    this.lastPartial = '';
    if (text.trim().length > 0) {
      this.post(s, () => this.listener.onFinal(text));
    }

    // Фраза закончилась — самое время сменить подсказку
    if (this.pendingContext !== null) {
      const words = this.pendingContext;
      this.pendingContext = null;
      this.currentContext = words;
      this.destroyRecognizer();
      try {
        this.recognizer = this.createRecognizer(words);
      } catch (e) {
        const msg = e instanceof Error ? e.message : 'распознаватель не создан';
        this.post(s, () => this.listener.onError(msg));
      }
    }
  }

  private handleAudioLost(s: Session, err: AudioError): void {
    this.cleanup(s);
    const msg = err.message;
    this.post(s, () => this.listener.onError(msg));
    this.post(s, () => this.listener.onListeningChanged(false));
  }

  private cleanup(s: Session): void {
    s.active = false;
    if (this.session === s) this.session = null;
    this.audio = null;
    this.destroyRecognizer();
  }

  /**
   * Доставляет событие, если запуск не вытеснен более новым.
   * Порт post() из StreamingEngine: колбэки старого session дропаются.
   */
  private post(s: Session, block: () => void): void {
    const current = this.session;
    if (current === null || current === s) block();
  }
}

/**
 * Скачивает архив модели с прогрессом, чтобы браузер закэшировал его
 * и vosk-browser взял уже готовый файл.
 */
async function preloadWithProgress(
  url: string,
  onProgress: (p: number) => void
): Promise<void> {
  // Уже в кэше — не качаем повторно
  if (await isCached(url)) {
    onProgress(1);
    return;
  }

  const res = await fetch(url);
  if (!res.ok) {
    throw new Error(`не удалось скачать модель: HTTP ${res.status}`);
  }

  const total = Number(res.headers.get('content-length') ?? 0);
  const body = res.body;

  if (!body) {
    await res.arrayBuffer();
    onProgress(1);
    return;
  }

  const reader = body.getReader();
  let received = 0;

  for (;;) {
    const { done, value } = await reader.read();
    if (done) break;
    received += value?.length ?? 0;
    if (total > 0) onProgress(Math.min(received / total, 0.99));
  }

  onProgress(1);
}

/** Проверяет, лежит ли файл в Cache Storage. */
async function isCached(url: string): Promise<boolean> {
  if (typeof caches === 'undefined') return false;
  try {
    const cache = await caches.open('reading-tracker-models');
    const hit = await cache.match(url);
    if (hit) return true;

    const res = await fetch(url);
    if (res.ok) await cache.put(url, res.clone());
    return true;
  } catch {
    return false;
  }
}
