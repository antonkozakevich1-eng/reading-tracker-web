/**
 * Слова текста вокруг позиции — подсказка для распознавателя.
 * Порт ContextWords.kt.
 */

import type { Doc } from '../text/Doc';
import { Words } from '../text/Words';

/**
 * Уникальные слова окна: back слов назад и ahead вперёд от center. Слова с «ё» в тексте
 * даются и в нормализованном виде («все»), и как написаны («всё»): распознаватель
 * произносит «ё», а в книгах его часто нет.
 */
export function window(doc: Doc, center: number, back: number, ahead: number): string[] {
  const from = Math.max(center - back, 0);
  const to = Math.min(center + ahead, doc.size);

  const words = new Set<string>();

  for (let i = from; i < to; i++) {
    words.add(doc.norm[i]!);

    const raw = doc.text.slice(doc.wordStart[i]!, doc.wordEnd[i]!);
    if (raw.includes('ё') || raw.includes('Ё')) {
      words.add(Words.spelled(raw));
    }
  }

  return Array.from(words);
}

export const ContextWords = { window };
