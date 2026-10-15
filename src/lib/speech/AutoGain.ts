/**
 * Программное усиление тихой речи: медленная автоматическая регулировка уровня
 * плюс ограничитель, чтобы громкие всплески не искажались.
 * Порт AutoGain.kt.
 *
 * sensitivity (0..100) задаёт, насколько сильно можно усиливать: чем выше, тем тише голос
 * ещё будет «подтянут» (при этом растёт и шум).
 */

const TARGET_RMS = 0.08;
const KNEE = 24000;

export class AutoGain {
  sensitivity = 50;

  private gain = 1;
  private speechLevel = 0; // оценка уровня речи (RMS, 0..1)
  private noiseFloor = 0.002; // оценка уровня шума (RMS, 0..1)

  /** Усиливает buf на месте, возвращает уровень после усиления для индикатора (0..1). */
  process(buf: Int16Array, n: number): number {
    if (n <= 0) return 0;

    const rms = rmsOf(buf, n);

    // Шум: быстро опускаемся к тишине в паузах, очень медленно поднимаемся при росте фона.
    this.noiseFloor =
      rms < this.noiseFloor ? rms * 0.5 + this.noiseFloor * 0.5 : this.noiseFloor * 1.002 + 1e-6;
    this.noiseFloor = coerceIn(this.noiseFloor, 0.0002, 0.05);

    const isSpeech = rms > this.noiseFloor * 2.5 && rms > 0.0012;
    if (isSpeech) {
      this.speechLevel = this.speechLevel === 0 ? rms : this.speechLevel * 0.8 + rms * 0.2;
    }

    const s = coerceIn(this.sensitivity, 0, 100) / 100;
    const maxGain = 2 + 38 * s; // 2× … 40×
    const target =
      this.speechLevel > 0 ? coerceIn(TARGET_RMS / this.speechLevel, 1, maxGain) : Math.min(maxGain, 4);
    // Усиление растёт медленно (не раздуваем шум в паузах) и падает быстро (чтобы не клиппировать).
    const rate = target < this.gain ? 0.5 : isSpeech ? 0.15 : 0.02;
    this.gain += (target - this.gain) * rate;
    this.gain = coerceIn(this.gain, 1, maxGain);

    let sumSq = 0.0;
    for (let i = 0; i < n; i++) {
      const v = limit(buf[i]! * this.gain);
      // buf[i] = v.toInt().toShort() — приведение как в Kotlin (усечение к нулю, затем в short)
      buf[i] = toShort(Math.trunc(v));
      const norm = v / 32768.0;
      sumSq += norm * norm;
    }

    const outRms = Math.sqrt(sumSq / n);
    return levelOf(outRms);
  }

  reset(): void {
    this.gain = 1;
    this.speechLevel = 0;
  }
}

function rmsOf(buf: Int16Array, n: number): number {
  let s = 0.0;
  for (let i = 0; i < n; i++) {
    const v = buf[i]! / 32768.0;
    s += v * v;
  }
  return Math.sqrt(s / n);
}

/** Мягкое ограничение вблизи полной шкалы. */
function limit(v: number): number {
  const a = Math.abs(v);
  if (a <= KNEE) return v;
  const over = a - KNEE;
  const soft = KNEE + (32767 - KNEE) * (1 - 1 / (1 + over / (32767 - KNEE)));
  return v < 0 ? -Math.min(soft, 32767) : Math.min(soft, 32767);
}

function levelOf(rms: number): number {
  const db = 20 * Math.log10(Math.max(rms, 1e-5));
  return coerceIn((db + 60) / 50, 0, 1);
}

function coerceIn(v: number, min: number, max: number): number {
  return Math.min(Math.max(v, min), max);
}

/**
 * Приведение к int16 как в Java/Kotlin: отбрасываем старшие биты.
 * Short — 16-битное знаковое, переполнение заворачивается.
 */
function toShort(v: number): number {
  return ((v | 0) << 16) >> 16;
}
