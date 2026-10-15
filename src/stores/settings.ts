/**
 * Svelte store настроек, синхронизированный с localStorage.
 * Порт Settings.kt: те же ключи, дефолты и клампы.
 *
 * Позиции на документ (pos:<key>) живут отдельно — в IndexedDB,
 * потому что документов может быть много (см. stores/document.ts).
 */

import { writable, get, type Writable } from 'svelte/store';
import {
  DEFAULT_SETTINGS,
  THEME_NAMES,
  THEME_SYSTEM,
  normalizeSettings,
  type Settings
} from '../lib/settings';

const STORAGE_KEY = 'tracker.settings';

/** Читает настройки из localStorage. */
export function load(): Settings {
  try {
    const raw = localStorage.getItem(STORAGE_KEY);
    if (!raw) return { ...DEFAULT_SETTINGS };
    return normalizeSettings(JSON.parse(raw) as Partial<Settings>);
  } catch {
    // Битый JSON — значения по умолчанию
    return { ...DEFAULT_SETTINGS };
  }
}

/** Записывает настройки в localStorage. */
export function save(value: Settings): void {
  try {
    localStorage.setItem(STORAGE_KEY, JSON.stringify(value));
  } catch {
    // Приватный режим или переполнение — молча игнорируем
  }
}

/** Медиазапрос тёмной схемы (для темы «как в системе»). */
function darkQuery(): MediaQueryList | null {
  if (typeof window === 'undefined' || !window.matchMedia) return null;
  return window.matchMedia('(prefers-color-scheme: dark)');
}

/**
 * Применяет тему к <html data-theme>.
 * Для темы «как в системе» data-theme остаётся system, а CSS
 * разбирается через prefers-color-scheme.
 */
export function applyTheme(theme: number): void {
  const name = THEME_NAMES[theme] ?? 'dark';
  document.documentElement.setAttribute('data-theme', name);

  // Цвет системных элементов браузера
  const isDark = theme === 3 || theme === 4 || (theme === THEME_SYSTEM && (darkQuery()?.matches ?? false));
  document.documentElement.style.colorScheme = isDark ? 'dark' : 'light';
}

function createSettingsStore(): Writable<Settings> {
  const store = writable<Settings>(load());

  // Сохраняем и применяем при каждом изменении
  store.subscribe((value) => {
    save(value);
    applyTheme(value.theme);
  });

  // Следим за сменой системной схемы, если выбрана тема «как в системе»
  const mq = darkQuery();
  if (mq) {
    const onChange = (): void => {
      if (get(store).theme === THEME_SYSTEM) applyTheme(THEME_SYSTEM);
    };
    mq.addEventListener('change', onChange);
  }

  return store;
}

export const settings = createSettingsStore();

/** Точечное обновление с валидацией. */
export function updateSettings(patch: Partial<Settings>): void {
  settings.update((s) => normalizeSettings({ ...s, ...patch }));
}

/** Полный сброс к значениям по умолчанию (порт reset в настройках). */
export function resetSettings(): void {
  settings.set({ ...DEFAULT_SETTINGS });
}

/** Текущее значение без подписки. */
export function currentSettings(): Settings {
  return get(settings);
}
