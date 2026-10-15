/**
 * Настройки и сохранённые позиции чтения. Порт Settings.kt.
 *
 * Ключи и дефолты 1:1 с оригиналом. Позиции на документ хранятся
 * с префиксом `pos:` — как в SharedPreferences.
 */

/** Ключ встроенного документа (Settings.DOC_ASSET). */
export const DOC_ASSET = 'asset';

/** 0 — как в системе, 1 — бумага, 2 — сепия, 3 — тёмная, 4 — чёрная (AMOLED). */
export const THEME_SYSTEM = 0;
export const THEME_LIGHT = 1;
export const THEME_SEPIA = 2;
export const THEME_DARK = 3;
export const THEME_BLACK = 4;

export const MIN_FONT = 14;
export const MAX_FONT = 48;

export const MIN_LINE_SPACING = 1.1;
export const MAX_LINE_SPACING = 1.9;

export const MIN_SENSITIVITY = 0;
export const MAX_SENSITIVITY = 100;

/** Движок распознавания. EngineKind: NEURAL = 0, VOSK = 1. */
export const ENGINE_NEURAL = 0;
export const ENGINE_VOSK = 1;

export type ThemeId = 0 | 1 | 2 | 3 | 4;
export type EngineId = 0 | 1;

export interface Settings {
  /** 0..4. */
  theme: number;
  /** 14..48, по умолчанию 22. */
  fontSp: number;
  /** Шрифт с засечками (для книг приятнее). */
  serif: boolean;
  /** Межстрочный интервал, множитель 1.1..1.9. */
  lineSpacing: number;
  /** Чувствительность микрофона 0..100. */
  sensitivity: number;
  /** Какой движок распознавания использовать. */
  engine: number;
  /** Подсказывать распознавателю слова из текста вокруг позиции. */
  useContext: boolean;
  /** Прокручивать текст за подсветкой. */
  autoScroll: boolean;
  seenIntro: boolean;
  /** Ключ документа, который открыт сейчас («asset» или «file:…»). */
  currentDoc: string;
  /** Имя пользовательского файла. */
  customName: string;
}

/** Дефолты как в Settings.kt, кроме fontSp и lineSpacing.
 *
 * Для мобильного веба (iPhone) 22 sp из Android выглядит слишком крупно
 * на 390px: в строку влезает 4–5 слов. 18px — комфортный размер для
 * чтения поэмы на телефоне, при этом границы 14–48 не менялись.
 */
export const DEFAULT_SETTINGS: Settings = {
  theme: THEME_DARK,
  fontSp: 18,
  serif: true,
  lineSpacing: 1.5,
  sensitivity: 60,
  engine: ENGINE_NEURAL,
  useContext: true,
  autoScroll: true,
  seenIntro: false,
  currentDoc: DOC_ASSET,
  customName: ''
};

/** Приводит значение к диапазону. Аналог Kotlin coerceIn. */
export function coerceIn(value: number, min: number, max: number): number {
  if (Number.isNaN(value)) return min;
  return Math.min(Math.max(value, min), max);
}

/**
 * Аналог EngineKind.of(id): неизвестный id даёт NEURAL.
 */
export function engineOf(id: number): number {
  return id === ENGINE_VOSK ? ENGINE_VOSK : ENGINE_NEURAL;
}

/** Валидирует и нормализует настройки (защита от битого хранилища). */
export function normalizeSettings(raw: Partial<Settings> | null | undefined): Settings {
  const s = raw ?? {};

  const theme = [0, 1, 2, 3, 4].includes(s.theme as number)
    ? (s.theme as number)
    : DEFAULT_SETTINGS.theme;

  return {
    theme,
    fontSp: coerceIn(Number(s.fontSp ?? DEFAULT_SETTINGS.fontSp), MIN_FONT, MAX_FONT),
    serif: s.serif ?? DEFAULT_SETTINGS.serif,
    lineSpacing: coerceIn(
      Number(s.lineSpacing ?? DEFAULT_SETTINGS.lineSpacing),
      MIN_LINE_SPACING,
      MAX_LINE_SPACING
    ),
    sensitivity: coerceIn(
      Number(s.sensitivity ?? DEFAULT_SETTINGS.sensitivity),
      MIN_SENSITIVITY,
      MAX_SENSITIVITY
    ),
    engine: engineOf(Number(s.engine ?? DEFAULT_SETTINGS.engine)),
    useContext: s.useContext ?? DEFAULT_SETTINGS.useContext,
    autoScroll: s.autoScroll ?? DEFAULT_SETTINGS.autoScroll,
    seenIntro: s.seenIntro ?? DEFAULT_SETTINGS.seenIntro,
    currentDoc: typeof s.currentDoc === 'string' && s.currentDoc ? s.currentDoc : DOC_ASSET,
    customName: typeof s.customName === 'string' ? s.customName : ''
  };
}

/** Имена тем для атрибута data-theme на <html>. */
export const THEME_NAMES: Record<number, string> = {
  [THEME_SYSTEM]: 'system',
  [THEME_LIGHT]: 'light',
  [THEME_SEPIA]: 'sepia',
  [THEME_DARK]: 'dark',
  [THEME_BLACK]: 'black'
};

/**
 * Порядок переключения тем по кругу — как в требовании:
 * system → light → sepia → dark → black → system.
 */
const THEME_CYCLE = [THEME_SYSTEM, THEME_LIGHT, THEME_SEPIA, THEME_DARK, THEME_BLACK];

/** Следующая тема по кругу. */
export function nextTheme(current: number): number {
  const i = THEME_CYCLE.indexOf(current);
  return THEME_CYCLE[(i + 1) % THEME_CYCLE.length] ?? THEME_DARK;
}

/** Человекочитаемое имя темы для подписи на кнопке. */
export const THEME_LABELS: Record<number, string> = {
  [THEME_SYSTEM]: 'Система',
  [THEME_LIGHT]: 'Бумага',
  [THEME_SEPIA]: 'Сепия',
  [THEME_DARK]: 'Тёмная',
  [THEME_BLACK]: 'Чёрная'
};

/** Ключ позиции для документа. */
export function positionKey(docKey: string): string {
  return `pos:${docKey}`;
}
