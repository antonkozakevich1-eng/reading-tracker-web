/**
 * Придуманный «русскоподобный» текст для тестов. Порт PseudoText.kt (testutil).
 *
 * ВАЖНО: используем JavaRandom — точную реализацию java.util.Random.
 * Стандартный Math.random/другие ГПСЧ дадут другой текст, и тесты
 * TextTrackerTest не сойдутся с оригиналом.
 */

import { Doc } from '../../src/lib/text/Doc';
import { JavaRandom } from './JavaRandom';

const CONSONANTS = 'бвгдзклмнпрстхчш';
const VOWELS = 'аеиоуыя';
const FUNCTION_WORDS = ['и', 'в', 'на', 'не', 'он', 'но', 'как', 'что', 'она', 'то', 'там', 'так'];

const ROMAN = [
  'ПЕРВАЯ',
  'ВТОРАЯ',
  'ТРЕТЬЯ',
  'ЧЕТВЁРТАЯ',
  'ПЯТАЯ',
  'ШЕСТАЯ',
  'СЕДЬМАЯ',
  'ВОСЬМАЯ'
];

export function vocabulary(rnd: JavaRandom, size: number): string[] {
  const set = new Set<string>();
  while (set.size < size) {
    let sb = '';
    const repeats = 2 + rnd.nextInt(3);
    for (let k = 0; k < repeats; k++) {
      sb += CONSONANTS[rnd.nextInt(CONSONANTS.length)]!;
      sb += VOWELS[rnd.nextInt(VOWELS.length)]!;
    }
    if (rnd.nextInt(3) === 0) sb += CONSONANTS[rnd.nextInt(CONSONANTS.length)]!;
    set.add(sb);
  }
  return Array.from(set);
}

/** Текст из строк по 5–8 слов, номер «[5]» у каждой пятой строки, заголовок каждые linesPerChapter строк. */
export function raw(
  rnd: JavaRandom,
  vocab: string[],
  lines: number,
  linesPerChapter = 120
): string {
  let sb = '';
  let chapter = 0;

  for (let line = 1; line <= lines; line++) {
    if ((line - 1) % linesPerChapter === 0) {
      chapter++;
      if (sb.length > 0) sb += '\n';
      sb += `ПЕСНЬ ${ROMAN[(chapter - 1) % ROMAN.length]!}\n\n`;
    }

    if (line % 5 === 0) sb += `[${line}] `;

    const count = 5 + rnd.nextInt(4);
    const words: string[] = [];
    for (let k = 0; k < count; k++) {
      if (rnd.nextInt(4) === 0) {
        words.push(FUNCTION_WORDS[rnd.nextInt(FUNCTION_WORDS.length)]!);
      } else {
        const idx = Math.min(
          Math.floor(vocab.length * Math.pow(rnd.nextDouble(), 1.6)),
          vocab.length - 1
        );
        words.push(vocab[idx]!);
      }
    }

    const text = words.join(' ');
    // replaceFirstChar { it.uppercase() }
    const rendered =
      line % 7 === 0 ? text.charAt(0).toUpperCase() + text.slice(1) + '.' : text + ',';
    sb += rendered + '\n';
  }

  return sb;
}

export function doc(seed = 1, lines = 600): Doc {
  const rnd = new JavaRandom(seed);
  return Doc.parse(raw(rnd, vocabulary(rnd, 1500), lines));
}

export const PseudoText = { doc, raw, vocabulary };
