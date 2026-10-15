/**
 * Порт SettingsTest.kt — 1:1 (без Robolectric: вместо SharedPreferences
 * проверяем чистые функции нормализации, которые использует store).
 * Источник: alicegpt-original/android/app/src/test/java/com/alicegpt/textfollower/SettingsTest.kt
 */

import { describe, it, expect } from 'vitest';
import {
  DOC_ASSET,
  MAX_FONT,
  MIN_FONT,
  THEME_DARK,
  THEME_SEPIA,
  ENGINE_NEURAL,
  ENGINE_VOSK,
  engineOf,
  normalizeSettings
} from '../src/lib/settings';

describe('SettingsTest', () => {
  it('defaultsAreSensible', () => {
    const s = normalizeSettings(null);
    expect(s.engine).toBe(ENGINE_NEURAL);
    expect(s.theme).toBe(THEME_DARK);
    // ОТЛИЧИЕ ОТ ОРИГИНАЛА (осознанное): в Settings.kt fontSp = 22 sp,
    // lineSpacing = 1.35. Для мобильного веба (iPhone, 390px) взяты 18px
    // и 1.5 — иначе в строку влезает 4–5 слов поэмы.
    expect(s.fontSp).toBe(18);
    expect(s.lineSpacing).toBe(1.5);
    expect(s.serif && s.useContext && s.autoScroll).toBe(true);
    expect(s.seenIntro).toBe(false);
    expect(s.currentDoc).toBe(DOC_ASSET);
    // position(DOC_ASSET) по умолчанию = 0 — проверяется в document store
    expect(s.sensitivity).toBe(60);
    // Границы и клампы остались как в оригинале
    expect(MIN_FONT).toBe(14);
    expect(MAX_FONT).toBe(48);
  });

  it('valuesAreRememberedBetweenInstances', () => {
    // Аналог: записали настройки, прочитали заново
    const written = {
      engine: ENGINE_VOSK,
      theme: THEME_SEPIA,
      fontSp: 30,
      sensitivity: 80,
      useContext: false,
      customName: 'книга.txt'
    };

    const a = normalizeSettings(written);
    // Повторная нормализация уже сохранённого значения ничего не меняет
    const b = normalizeSettings(a);

    expect(b.engine).toBe(ENGINE_VOSK);
    expect(b.theme).toBe(THEME_SEPIA);
    expect(b.fontSp).toBe(30);
    expect(b.sensitivity).toBe(80);
    expect(b.useContext).toBe(false);
    expect(b.customName).toBe('книга.txt');
  });

  it('outOfRangeValuesAreClamped', () => {
    const s = normalizeSettings({ fontSp: 500 });
    expect(s.fontSp).toBe(MAX_FONT);

    expect(normalizeSettings({ fontSp: 1 }).fontSp).toBe(MIN_FONT);

    expect(normalizeSettings({ sensitivity: 1000 }).sensitivity).toBe(100);
    expect(normalizeSettings({ sensitivity: -5 }).sensitivity).toBe(0);

    expect(normalizeSettings({ lineSpacing: 9 }).lineSpacing).toBe(1.9);
    expect(normalizeSettings({ lineSpacing: 0.1 }).lineSpacing).toBe(1.1);
  });

  it('unknownEngineIdFallsBackToTheNeuralOne', () => {
    expect(engineOf(77)).toBe(ENGINE_NEURAL);
    expect(engineOf(ENGINE_VOSK)).toBe(ENGINE_VOSK);
  });
});
