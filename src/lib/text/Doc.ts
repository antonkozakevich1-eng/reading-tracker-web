/**
 * Разбор текста на слова и секции. Порт Doc.kt (класс Doc + companion object).
 *
 * ВАЖНО: заголовки и номера стихов («[5]») остаются в text, но слов из них
 * в norm нет — на сопоставление с речью они не влияют.
 */

import { Words } from './Words';

/** Участок текста, показываемый на экране целиком. */
export interface Section {
  /** Заголовок; у продолжений длинных глав — с пометкой «(продолжение)». */
  readonly title: string;
  /** Попадает ли секция в оглавление (продолжения — нет). */
  readonly inToc: boolean;
  readonly start: number;
  readonly end: number;
  /** Диапазон индексов слов [firstWord, endWord). */
  readonly firstWord: number;
  readonly endWord: number;
}

export const DEFAULT_SECTION_CHARS = 30000;

/** Метка порядка байтов в начале файла. */
const BOM = String.fromCharCode(0xfeff);

const HEADING_KEYWORDS = [
  'песнь',
  'глава',
  'часть',
  'книга',
  'акт',
  'действие',
  'сцена',
  'пролог',
  'эпилог',
  'предисловие',
  'вступление',
  'примечания',
  'комментарии',
  'оглавление',
  'содержание'
];

/**
 * «Глава первая», «Глава 12», «Глава 12.»;
 * но не «Песнь XX.» — так в оглавлениях и примечаниях нумеруют пункты.
 */
const MIXED_CASE_HEADING =
  /^(песнь|глава|часть|книга|акт|действие)\s+([ivxlcdm]+|\d+\.?|[а-яё]+)$/i;

/** Разобранный текст. */
export class Doc {
  constructor(
    readonly text: string,
    readonly norm: string[],
    readonly wordStart: Int32Array,
    readonly wordEnd: Int32Array,
    readonly sections: Section[],
    /** Пары (начало, конец) номеров строк в text. */
    readonly markerRanges: Int32Array,
    /** Пары (начало, конец) заголовков в text. */
    readonly headingRanges: Int32Array
  ) {}

  get size(): number {
    return this.norm.length;
  }

  /** Секция, в которой лежит слово (для позиции в конце текста — последняя). */
  sectionOfWord(word: number): number {
    if (this.sections.length === 0) return 0;
    const w = coerceIn(word, 0, Math.max(0, this.size - 1));

    let lo = 0;
    let hi = this.sections.length - 1;
    while (lo < hi) {
      const mid = (lo + hi + 1) >>> 1;
      if (this.sections[mid]!.firstWord <= w) lo = mid;
      else hi = mid - 1;
    }

    // Пустые секции (одни заголовки) пропускаем.
    let s = lo;
    while (s < this.sections.length - 1 && this.sections[s]!.endWord <= w) s++;
    return s;
  }

  /** Слово, содержащее символ offset, либо ближайшее следующее. */
  wordAtOffset(offset: number): number {
    if (this.size === 0) return 0;

    let lo = 0;
    let hi = this.size - 1;
    while (lo < hi) {
      const mid = (lo + hi) >>> 1;
      if (this.wordEnd[mid]! > offset) hi = mid;
      else lo = mid + 1;
    }
    return lo;
  }

  /** Разбирает сырой текст. */
  static parse(raw: string, maxSectionChars: number = DEFAULT_SECTION_CHARS): Doc {
    const text = raw.replace(new RegExp(`^${BOM}`), '').replace(/\r\n/g, '\n').replace(/\r/g, '\n');

    const norm: string[] = [];
    const starts: number[] = [];
    const ends: number[] = [];
    const markers: number[] = [];
    const headings: number[] = [];
    const headingTitles: string[] = [];

    let lineStart = 0;
    while (lineStart <= text.length) {
      let lineEnd = text.indexOf('\n', lineStart);
      if (lineEnd < 0) lineEnd = text.length;

      const line = text.slice(lineStart, lineEnd);
      if (isHeading(line)) {
        // Границы заголовка без окружающих пробелов
        const trimmedStart = lineStart + (line.length - line.trimStart().length);
        const trimmedEnd = lineEnd - (line.length - line.trimEnd().length);
        headings.push(trimmedStart, trimmedEnd);
        headingTitles.push(prettyTitle(line));
      } else {
        tokenizeLine(text, lineStart, lineEnd, norm, starts, ends, markers);
      }

      if (lineEnd >= text.length) break;
      lineStart = lineEnd + 1;
    }

    const wordStart = Int32Array.from(starts);
    const wordEnd = Int32Array.from(ends);
    const sections = buildSections(text, headings, headingTitles, wordStart, maxSectionChars);

    return new Doc(
      text,
      norm,
      wordStart,
      wordEnd,
      sections,
      Int32Array.from(markers),
      Int32Array.from(headings)
    );
  }
}

/** Приводит значение к диапазону. */
function coerceIn(value: number, min: number, max: number): number {
  return Math.min(Math.max(value, min), max);
}

/** Заголовок главы? */
export function isHeading(line: string): boolean {
  const t = line.trim();
  if (t.length === 0 || t.length > 60) return false;

  const lower = t.toLowerCase();
  const keyword = HEADING_KEYWORDS.find((k) => lower.startsWith(k));
  if (keyword === undefined) return false;

  const rest = lower.slice(keyword.length);
  if (rest.length > 0 && !isWhitespace(rest[0]!) && rest[0] !== '.') return false;

  const letters = [...t].filter((ch) => isLetter(ch));
  // Весь капс — заголовок («ПЕСНЬ ПЕРВАЯ»)
  if (letters.length > 0 && letters.every((ch) => isUpperCase(ch))) return true;

  return t.length <= 30 && MIXED_CASE_HEADING.test(t);
}

/** Компактный заголовок для оглавления. */
function prettyTitle(line: string): string {
  const t = line.trim().replace(/\s+/g, ' ').replace(/\.+$/, '');

  const letters = [...t].filter((ch) => isLetter(ch));
  const shout = letters.length > 0 && letters.every((ch) => isUpperCase(ch));

  const base = shout ? t.toLowerCase() : t;
  // replaceFirstChar { it.uppercase() } — поднимаем регистр первого символа
  if (base.length === 0) return base;
  const first = [...base][0]!;
  return first.toUpperCase() + base.slice(first.length);
}

/** Слова строки; номера строк «[5]» пропускаются и запоминаются. */
function tokenizeLine(
  text: string,
  from: number,
  to: number,
  norm: string[],
  starts: number[],
  ends: number[],
  markers: number[]
): void {
  let i = from;
  while (i < to) {
    const c = text[i]!;

    if (c === '[') {
      const close = markerEnd(text, i, to);
      if (close > 0) {
        markers.push(i, close);
        i = close;
        continue;
      }
    }

    if (Words.isWordStart(c)) {
      const s = i;
      i++;
      while (i < to && Words.isWordPart(text[i]!)) i++;
      const w = Words.normalize(text.slice(s, i));
      if (w.length > 0) {
        norm.push(w);
        starts.push(s);
        ends.push(i);
      }
    } else {
      i++;
    }
  }
}

/** Конец «[123]», начинающегося в i; 0, если это не номер строки. */
function markerEnd(text: string, i: number, to: number): number {
  let j = i + 1;
  const digitsFrom = j;
  while (j < to && text[j]! >= '0' && text[j]! <= '9') j++;
  const digits = j - digitsFrom;
  return digits >= 1 && digits <= 6 && j < to && text[j] === ']' ? j + 1 : 0;
}

interface Bound {
  readonly title: string;
  readonly start: number;
}

function buildSections(
  text: string,
  headings: number[],
  titles: string[],
  wordStart: Int32Array,
  maxChars: number
): Section[] {
  const bounds: Bound[] = [];

  if (titles.length === 0) {
    bounds.push({ title: 'Весь текст', start: 0 });
  } else {
    const firstHeading = headings[0]!;
    // Текст до первого заголовка — отдельная секция «Начало»
    if (firstWordIndex(wordStart, 0) < firstWordIndex(wordStart, firstHeading)) {
      bounds.push({ title: 'Начало', start: 0 });
    }
    for (let k = 0; k < titles.length; k++) {
      bounds.push({ title: titles[k]!, start: headings[2 * k]! });
    }
  }

  const sections: Section[] = [];

  for (let b = 0; b < bounds.length; b++) {
    const bStart = bounds[b]!.start;
    const bEnd = b + 1 < bounds.length ? bounds[b + 1]!.start : text.length;

    let pieceStart = bStart;
    let first = true;

    while (pieceStart < bEnd) {
      const pieceEnd = pieceEndOf(text, pieceStart, bEnd, maxChars);
      sections.push({
        title: first ? bounds[b]!.title : bounds[b]!.title + ' (продолжение)',
        inToc: first,
        start: pieceStart,
        end: pieceEnd,
        firstWord: firstWordIndex(wordStart, pieceStart),
        endWord: firstWordIndex(wordStart, pieceEnd)
      });
      first = false;
      pieceStart = pieceEnd;
    }

    if (first) {
      // Пустая секция из одного заголовка
      const at = firstWordIndex(wordStart, bStart);
      sections.push({
        title: bounds[b]!.title,
        inToc: true,
        start: bStart,
        end: bEnd,
        firstWord: at,
        endWord: at
      });
    }
  }

  return sections;
}

/** Конец куска не длиннее maxChars: по возможности на границе строки. */
function pieceEndOf(text: string, start: number, limit: number, maxChars: number): number {
  if (limit - start <= maxChars) return limit;

  const hard = start + maxChars;
  const nl = text.lastIndexOf('\n', hard - 1);
  return nl > start + maxChars / 2 ? nl + 1 : hard;
}

/** Индекс первого слова, начинающегося не раньше offset. */
function firstWordIndex(wordStart: Int32Array, offset: number): number {
  let lo = 0;
  let hi = wordStart.length;
  while (lo < hi) {
    const mid = (lo + hi) >>> 1;
    if (wordStart[mid]! >= offset) hi = mid;
    else lo = mid + 1;
  }
  return lo;
}

// --- Вспомогательные предикаты (аналоги Character/Kotlin) ---

function isLetter(ch: string): boolean {
  return /\p{L}/u.test(ch);
}

function isWhitespace(ch: string): boolean {
  return /\s/u.test(ch);
}

function isUpperCase(ch: string): boolean {
  return ch !== ch.toLowerCase() && ch === ch.toUpperCase();
}

export const DocStatics = { isHeading, DEFAULT_SECTION_CHARS };
