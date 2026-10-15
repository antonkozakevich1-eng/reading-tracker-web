/**
 * Нечёткое сравнение слов. Порт WordMatcher.kt.
 *
 * Распознавание речи часто путает окончания и отдельные буквы, поэтому
 * «красивая» и «красивый», «читал» и «читала» считаются одним словом.
 *
 * Не потокобезопасен: держит рабочие буферы (rowA/rowB).
 */

/** Всё, что ниже этого порога, сразу сводится к нулю. */
export const MATCH_MIN = 0.7;

export class WordMatcher {
  private rowA = new Int32Array(32);
  private rowB = new Int32Array(32);

  /** 1.0 — слова совпали, 0.0 — не похожи. */
  similarity(a: string, b: string): number {
    if (a === b) return 1.0;

    const minLen = Math.min(a.length, b.length);
    const maxLen = Math.max(a.length, b.length);

    // Короткие слова («и», «в», «он») при распознавании слишком часто ошибочны —
    // только точное совпадение.
    if (minLen < 3) return 0.0;
    if (maxLen - minLen > Math.max(2, Math.floor((maxLen * 2) / 5))) return 0.0;

    const prefix = this.commonPrefix(a, b);
    let sim = 1.0 - this.levenshtein(a, b) / maxLen;

    // Общий корень + разные окончания («тихая»/«тихой», «красивыми»/«красивый»).
    if (prefix >= 4 && prefix * 5 >= maxLen * 3) sim = Math.max(sim, 0.8);
    else if (prefix >= 3 && minLen >= 4 && prefix * 5 >= maxLen * 3) sim = Math.max(sim, 0.75);

    return sim >= MATCH_MIN ? sim : 0.0;
  }

  private commonPrefix(a: string, b: string): number {
    const n = Math.min(a.length, b.length);
    let i = 0;
    while (i < n && a[i] === b[i]) i++;
    return i;
  }

  private levenshtein(a: string, b: string): number {
    const m = b.length;

    if (this.rowA.length <= m) {
      this.rowA = new Int32Array(m + 1);
      this.rowB = new Int32Array(m + 1);
    }

    let prev = this.rowA;
    let cur = this.rowB;

    for (let j = 0; j <= m; j++) prev[j] = j;

    for (let i = 1; i <= a.length; i++) {
      cur[0] = i;
      const ca = a[i - 1]!;
      for (let j = 1; j <= m; j++) {
        const cost = ca === b[j - 1] ? 0 : 1;
        cur[j] = Math.min(
          Math.min(cur[j - 1]! + 1, prev[j]! + 1),
          prev[j - 1]! + cost
        );
      }
      const t = prev;
      prev = cur;
      cur = t;
    }

    return prev[m]!;
  }
}
