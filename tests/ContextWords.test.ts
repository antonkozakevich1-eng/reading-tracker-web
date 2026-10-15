/**
 * Порт ContextWordsTest.kt — 1:1.
 * Источник: alicegpt-original/android/app/src/test/java/com/alicegpt/textfollower/speech/ContextWordsTest.kt
 */

import { describe, it, expect } from 'vitest';
import { Doc } from '../src/lib/text/Doc';
import { ContextWords } from '../src/lib/speech/ContextWords';

const doc = Doc.parse(
  Array.from({ length: 300 }, (_, it) => `слово${Math.floor(it / 10)}x${it % 10}`).join(' ')
);

describe('ContextWordsTest', () => {
  it('windowCoversWordsAroundTheCenter', () => {
    const w = ContextWords.window(doc, 100, 10, 20);
    expect(w.length).toBe(30);
    expect(w[0]).toBe(doc.norm[90]);
    expect(w[w.length - 1]).toBe(doc.norm[119]);
  });

  it('windowIsClampedToTheDocument', () => {
    expect(ContextWords.window(doc, 5, 10, 10).length).toBe(15);

    const end = ContextWords.window(doc, 295, 10, 100);
    expect(end[0]).toBe(doc.norm[285]);
    expect(end[end.length - 1]).toBe(doc.norm[299]);

    expect(ContextWords.window(Doc.parse(''), 0, 10, 10).length).toBe(0);
  });

  it('wordsWrittenWithYoAreGivenBothWays', () => {
    const d = Doc.parse('Всё идёт к концу, а лодка плывёт, и ВСЁ тихо; еще раз ёлка');
    const w = ContextWords.window(d, 0, 0, d.size);

    // нормализованные слова (по ним трекер сравнивает речь с текстом)
    // и слова, как они написаны (их слышит распознаватель)
    for (const x of ['все', 'всё', 'идет', 'идёт', 'плывет', 'плывёт', 'елка', 'ёлка']) {
      expect(w.includes(x), `нет «${x}» в ${w}`).toBe(true);
    }

    // слово без «ё» в тексте остаётся одним
    expect(w.filter((x) => x === 'еще').length).toBe(1);
    expect(w.includes('ещё')).toBe(false);

    expect(w.length).toBe(new Set(w).size);
  });

  it('wordsAreUniqueAndKeepTheirOrder', () => {
    const d = Doc.parse('лодка река лодка мост река лодка');
    expect(ContextWords.window(d, 3, 10, 10)).toEqual(['лодка', 'река', 'мост']);
  });
});
