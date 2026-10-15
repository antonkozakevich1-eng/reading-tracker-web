/**
 * Порт WordMatcherTest.kt — 1:1.
 * Источник: alicegpt-original/android/app/src/test/java/com/alicegpt/textfollower/tracking/WordMatcherTest.kt
 */

import { describe, it, expect } from 'vitest';
import { WordMatcher } from '../src/lib/tracker/WordMatcher';

describe('WordMatcherTest', () => {
  const m = new WordMatcher();

  it('equalWords', () => {
    expect(m.similarity('лодка', 'лодка')).toBeCloseTo(1.0, 10);
  });

  it('wrongEndingsAreForgiven', () => {
    expect(m.similarity('красивая', 'красивый')).toBeGreaterThanOrEqual(0.7);
    expect(m.similarity('плыл', 'плыла')).toBeGreaterThanOrEqual(0.7);
    expect(m.similarity('богиня', 'богини')).toBeGreaterThanOrEqual(0.8);
    expect(m.similarity('прекрасных', 'прекрасный')).toBeGreaterThanOrEqual(0.7);
  });

  it('differentWordsDoNotMatch', () => {
    expect(m.similarity('лодка', 'ветер')).toBeCloseTo(0.0, 10);
    expect(m.similarity('кот', 'кто')).toBeCloseTo(0.0, 10);
    expect(m.similarity('три', 'тридцать')).toBeCloseTo(0.0, 10);
  });

  it('shortWordsNeedExactMatch', () => {
    expect(m.similarity('он', 'она')).toBeCloseTo(0.0, 10);
    expect(m.similarity('на', 'но')).toBeCloseTo(0.0, 10);
    expect(m.similarity('на', 'на')).toBeCloseTo(1.0, 10);
  });
});
