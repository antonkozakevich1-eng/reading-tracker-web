/**
 * Точная реализация java.util.Random (48-битный линейный конгруэнтный генератор).
 *
 * Нужна, чтобы PseudoText давал ровно тот же текст, что и в оригинальных
 * Kotlin-тестах: иначе TextTrackerTest разойдётся с эталоном.
 *
 * Алгоритм из OpenJDK:
 *   seed = (seed * 0x5DEECE66D + 0xB) & ((1 << 48) - 1)
 *   next(bits) = seed >>> (48 - bits)
 */

const MULTIPLIER = 0x5deece66dn;
const ADDEND = 0xbn;
const MASK = (1n << 48n) - 1n;

export class JavaRandom {
  private seed: bigint;

  constructor(seed: number | bigint) {
    // Java: this.seed = (seed ^ 0x5DEECE66DL) & mask
    this.seed = (BigInt(seed) ^ MULTIPLIER) & MASK;
  }

  /** Аналог protected int next(int bits). */
  private next(bits: number): number {
    this.seed = (this.seed * MULTIPLIER + ADDEND) & MASK;
    // seed >>> (48 - bits) — беззнаковый сдвиг
    const shifted = this.seed >> BigInt(48 - bits);
    return Number(shifted);
  }

  /** Следующее псевдослучайное int в диапазоне [0, bound). */
  nextInt(bound?: number): number {
    if (bound === undefined) {
      // next(32)
      return this.next(32);
    }
    if (bound <= 0) throw new Error('bound must be positive');

    // Если bound — степень двойки, берём старшие биты
    if ((bound & -bound) === bound) {
      return Number((BigInt(bound) * BigInt(this.next(31))) >> 31n);
    }

    let bits: number;
    let val: number;
    do {
      bits = this.next(31);
      val = bits % bound;
    } while (bits - val + (bound - 1) < 0);

    return val;
  }

  /** Следующее псевдослучайное double в [0, 1). */
  nextDouble(): number {
    // (((long) next(26) << 27) + next(27)) / (double) (1L << 53)
    const high = this.next(26);
    const low = this.next(27);
    const combined = (BigInt(high) << 27n) + BigInt(low);
    return Number(combined) / Math.pow(2, 53);
  }
}
