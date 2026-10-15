/**
 * Поиск фразы в тексте. Порт TextSearch.kt.
 *
 * Слова ищутся нечётко (прощаются окончания), последнее слово
 * можно набрать не до конца.
 */

import { Words } from './Words';
import type { Doc } from './Doc';
import { WordMatcher } from '../tracker/WordMatcher';

export interface Hit {
  /** Индекс первого найденного слова. */
  readonly word: number;
  /** Заголовок главы, в которой найдено. */
  readonly chapter: string;
  /** Фрагмент текста вокруг находки. */
  readonly snippet: string;
}

const SNIPPET_BEFORE = 40;
const SNIPPET_AFTER = 70;

/** Максимум находок по умолчанию. */
export const SEARCH_LIMIT = 60;

export function find(doc: Doc, query: string, limit = SEARCH_LIMIT): Hit[] {
  const q = Words.recognized(query);
  if (q.length === 0 || doc.size === 0) return [];

  const matcher = new WordMatcher();
  const hits: Hit[] = [];
  const last = q.length - 1;

  let i = 0;
  while (i + q.length <= doc.size && hits.length < limit) {
    if (matches(matcher, q[0]!, doc.norm[i]!, last === 0)) {
      let ok = true;
      for (let k = 1; k <= last; k++) {
        if (!matches(matcher, q[k]!, doc.norm[i + k]!, k === last)) {
          ok = false;
          break;
        }
      }
      if (ok) hits.push(hit(doc, i, i + last));
    }
    i++;
  }

  return hits;
}

function matches(m: WordMatcher, q: string, w: string, isLast: boolean): boolean {
  if (q === w) return true;
  // Последнее слово можно набрать не до конца
  if (isLast && q.length >= 2 && w.startsWith(q)) return true;

  if (q.length < 4 || w.length < 4 || q[0] !== w[0]) return false;
  return m.similarity(q, w) >= 0.8;
}

function hit(doc: Doc, firstWord: number, lastWord: number): Hit {
  const text = doc.text;
  const from = Math.max(doc.wordStart[firstWord]! - SNIPPET_BEFORE, 0);
  const to = Math.min(doc.wordEnd[lastWord]! + SNIPPET_AFTER, text.length);

  const clean = text
    .slice(from, to)
    .replace(/\[\d+]/g, ' ')
    .replace(/\s*\n\s*/g, ' / ')
    .replace(/\s{2,}/g, ' ')
    .trim();

  const section = doc.sections[doc.sectionOfWord(firstWord)];

  return {
    word: firstWord,
    chapter: section?.title ?? '',
    snippet: (from > 0 ? '…' : '') + clean + (to < text.length ? '…' : '')
  };
}

export const TextSearch = { find, SEARCH_LIMIT };
