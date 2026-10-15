/**
 * Общие правила нормализации слов: и для текста книги, и для распознанной речи.
 * Порт Words.kt.
 *
 * Правила (порядок важен):
 * 1. NFC-нормализация — «й» может прийти как «и» + U+0306.
 * 2. lowercase(Locale.ROOT).
 * 3. ё (U+0451) → е (U+0435), если keepYo не задан.
 * 4. Снятие диакритики (Character.NON_SPACING_MARK).
 *
 * Признак «начала слова» — буква или цифра. «Часть слова» — плюс диакритика.
 */

/** Убирает токен [unk], который выдаёт Vosk. */
const UNKNOWN_TOKEN = '[unk]';

/** Unicode general category: Mn (Nonspacing_Mark) — числовой код 6. */
function isMark(ch: string): boolean {
  // Регулярка \p{Mn} — эквивалент Character.getType(c) === 6
  return /\p{Mn}/u.test(ch);
}

function normalizeWord(word: string, keepYo: boolean): string {
  const composed = word.normalize('NFC').toLowerCase();
  let out = '';

  // Итерируем по код-поинтам, а не по UTF-16 единицам: диакритика
  // за пределами BMP должна обрабатываться как один символ
  for (const ch of composed) {
    if (ch === '\u0451') {
      // ё
      out += keepYo ? '\u0451' : '\u0435';
    } else if (isMark(ch)) {
      // Диакритику выбрасываем
      continue;
    } else {
      out += ch;
    }
  }

  return out;
}

/** Обычная нормализация: ё приводится к е. */
export function normalize(word: string): string {
  return normalizeWord(word, false);
}

/** Нормализация с сохранением ё. */
export function spelled(word: string): string {
  return normalizeWord(word, true);
}

/** Начало слова — буква или цифра. */
export function isWordStart(ch: string): boolean {
  return /[\p{L}\p{N}]/u.test(ch);
}

/** Часть слова — буква, цифра или диакритика. */
export function isWordPart(ch: string): boolean {
  return /[\p{L}\p{N}]/u.test(ch) || isMark(ch);
}

/**
 * Разбивает распознанный текст на нормализованные слова.
 * Аналог Words.recognized(): вырезает [unk], режет по границам слов.
 */
export function recognized(text: string): string[] {
  if (!text.trim()) return [];

  const clean = text.includes(UNKNOWN_TOKEN)
    ? text.split(UNKNOWN_TOKEN).join(' ')
    : text;

  const out: string[] = [];
  let i = 0;

  while (i < clean.length) {
    const ch = clean[i]!;
    if (isWordStart(ch)) {
      const start = i;
      i++;
      while (i < clean.length && isWordPart(clean[i]!)) {
        i++;
      }
      const w = normalize(clean.slice(start, i));
      if (w.length > 0) out.push(w);
    } else {
      i++;
    }
  }

  return out;
}

export const Words = { normalize, spelled, recognized, isWordStart, isWordPart };
