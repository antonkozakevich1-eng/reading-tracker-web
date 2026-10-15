/**
 * Порт WordsTest.kt — 1:1.
 * Источник: alicegpt-original/android/app/src/test/java/com/alicegpt/textfollower/text/WordsTest.kt
 */

import { describe, it, expect } from 'vitest';
import { Words } from '../src/lib/text/Words';

describe('WordsTest', () => {
  it('normalizeLowersCaseReplacesYoAndDropsStressMarks', () => {
    expect(Words.normalize('ВСЁ')).toBe('все');
    expect(Words.normalize('Её')).toBe('ее');
    // знак ударения (комбинируемый акут)
    expect(Words.normalize('за\u0301мок')).toBe('замок');
  });

  it('spelledKeepsYo', () => {
    expect(Words.spelled('ВСЁ')).toBe('всё');
    expect(Words.spelled('За\u0301мок')).toBe('замок');
  });

  it('recognizedTextIsSplitIntoNormalizedWordsWithoutUnknownMarks', () => {
    expect(Words.recognized('Синяя  лодка, плывёт!')).toEqual(['синяя', 'лодка', 'плывет']);
    expect(Words.recognized('и [unk] лодка [unk]')).toEqual(['и', 'лодка']);
    expect(Words.recognized('   ')).toEqual([]);
    expect(Words.recognized('[unk] [unk]')).toEqual([]);
  });

  it('hyphenatedWordsFallApartAtTheHyphen', () => {
    // дефис — не часть слова: «из-за» это два слова «из» и «за»
    expect(Words.recognized('из-за леса')).toEqual(['из', 'за', 'леса']);
  });
});
