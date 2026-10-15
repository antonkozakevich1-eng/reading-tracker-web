/**
 * Статистика чтения: сколько слов прочитано, скорость и время.
 * Порт SessionStats.kt.
 *
 * Считаются только обычные продвижения вперёд; перескок в другое место (Move.far)
 * и ручной переход не добавляют «прочитанных» слов. Время идёт только пока
 * прослушивание включено.
 */

/** Продвижение дальше считается перескоком, а не чтением. */
const MAX_STEP = 40;
const WINDOW_MS = 60_000;
const MIN_MS = 5_000;

export class SessionStats {
  private wordsReadField = 0;
  private activeMs = 0;
  private runningSince = 0;
  /** (время, слов) для скорости за последнюю минуту. */
  private recent: [number, number][] = [];

  constructor(private readonly clock: () => number = Date.now) {}

  get wordsRead(): number {
    return this.wordsReadField;
  }

  get isRunning(): boolean {
    return this.runningSince !== 0;
  }

  start(): void {
    if (this.runningSince === 0) this.runningSince = this.clock();
  }

  pause(): void {
    if (this.runningSince !== 0) {
      this.activeMs += this.clock() - this.runningSince;
      this.runningSince = 0;
    }
  }

  /** Прослушивание шло activeMillis мс. */
  get activeMillis(): number {
    return this.activeMs + (this.runningSince !== 0 ? this.clock() - this.runningSince : 0);
  }

  onForwardMove(words: number): void {
    if (words <= 0 || words > MAX_STEP) return;
    this.wordsReadField += words;
    this.recent.push([this.clock(), words]);
  }

  /** Слов в минуту: за последнюю минуту чтения, а пока она не прошла — за всё время. */
  wordsPerMinute(): number {
    const now = this.clock();

    while (this.recent.length > 0 && now - this.recent[0]![0] > WINDOW_MS) {
      this.recent.shift();
    }

    const active = this.activeMillis;
    if (active < MIN_MS || this.wordsReadField === 0) return 0;

    const windowMs = Math.min(active, WINDOW_MS);
    const words =
      active <= WINDOW_MS
        ? this.wordsReadField
        : this.recent.reduce((sum, [, w]) => sum + w, 0);

    return Math.trunc((words * 60_000) / windowMs);
  }

  reset(): void {
    this.wordsReadField = 0;
    this.activeMs = 0;
    this.runningSince = this.isRunning ? this.clock() : 0;
    this.recent = [];
  }
}
