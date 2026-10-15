/**
 * Настройки приложения. Соответствуют android Settings.java:
 * тема, шрифт, serif, межстрочный интервал, чувствительность, движок,
 * подсказки контекста, автопрокрутка.
 */

export const THEME_SYSTEM = 0;
export const THEME_LIGHT = 1;
export const THEME_SEPIA = 2;
export const THEME_DARK = 3;
export const THEME_BLACK = 4;

export type ThemeId =
  | typeof THEME_SYSTEM
  | typeof THEME_LIGHT
  | typeof THEME_SEPIA
  | typeof THEME_DARK
  | typeof THEME_BLACK;

/** Имена тем для атрибута data-theme на <html>. */
export const THEME_NAMES: Record<ThemeId, string> = {
  [THEME_SYSTEM]: 'system',
  [THEME_LIGHT]: 'light',
  [THEME_SEPIA]: 'sepia',
  [THEME_DARK]: 'dark',
  [THEME_BLACK]: 'black'
};

/** Движок распознавания. В оригинале EngineKind: NEURAL=0, VOSK=1. */
export const ENGINE_NEURAL = 0;
export const ENGINE_VOSK = 1;

export type EngineId = typeof ENGINE_NEURAL | typeof ENGINE_VOSK;

export const MIN_FONT = 14;
export const MAX_FONT = 48;
export const DEFAULT_FONT = 22;

export const MIN_LINE_SPACING = 1.1;
export const MAX_LINE_SPACING = 1.9;
export const DEFAULT_LINE_SPACING = 1.35;

export const MIN_SENSITIVITY = 0;
export const MAX_SENSITIVITY = 100;
export const DEFAULT_SENSITIVITY = 60;

export interface Settings {
  theme: ThemeId;
  fontSp: number;
  serif: boolean;
  lineSpacing: number;
  sensitivity: number;
  engine: EngineId;
  useContext: boolean;
  autoScroll: boolean;
  seenIntro: boolean;
}

export const DEFAULT_SETTINGS: Settings = {
  theme: THEME_DARK,
  fontSp: DEFAULT_FONT,
  serif: true,
  lineSpacing: DEFAULT_LINE_SPACING,
  sensitivity: DEFAULT_SENSITIVITY,
  engine: ENGINE_NEURAL,
  useContext: true,
  autoScroll: true,
  seenIntro: false
};

/** Приводит значение к диапазону. Аналог RangesKt.coerceIn. */
export function coerceIn(value: number, min: number, max: number): number {
  if (Number.isNaN(value)) return min;
  return Math.min(Math.max(value, min), max);
}

/** Валидирует и нормализует настройки (защита от битого localStorage). */
export function normalizeSettings(raw: Partial<Settings> | null | undefined): Settings {
  const s = raw ?? {};
  const theme = (
    [THEME_SYSTEM, THEME_LIGHT, THEME_SEPIA, THEME_DARK, THEME_BLACK] as number[]
  ).includes(s.theme as number)
    ? (s.theme as ThemeId)
    : DEFAULT_SETTINGS.theme;

  const engine = s.engine === ENGINE_VOSK ? ENGINE_VOSK : ENGINE_NEURAL;

  return {
    theme,
    fontSp: coerceIn(Number(s.fontSp ?? DEFAULT_FONT), MIN_FONT, MAX_FONT),
    serif: s.serif ?? DEFAULT_SETTINGS.serif,
    lineSpacing: coerceIn(
      Number(s.lineSpacing ?? DEFAULT_LINE_SPACING),
      MIN_LINE_SPACING,
      MAX_LINE_SPACING
    ),
    sensitivity: coerceIn(
      Number(s.sensitivity ?? DEFAULT_SENSITIVITY),
      MIN_SENSITIVITY,
      MAX_SENSITIVITY
    ),
    engine,
    useContext: s.useContext ?? DEFAULT_SETTINGS.useContext,
    autoScroll: s.autoScroll ?? DEFAULT_SETTINGS.autoScroll,
    seenIntro: s.seenIntro ?? DEFAULT_SETTINGS.seenIntro
  };
}
