import { writable, get, type Writable } from 'svelte/store';
import {
  DEFAULT_SETTINGS,
  THEME_NAMES,
  normalizeSettings,
  type Settings
} from '../lib/settings';

const STORAGE_KEY = 'tracker.settings';

function load(): Settings {
  try {
    const raw = localStorage.getItem(STORAGE_KEY);
    if (!raw) return { ...DEFAULT_SETTINGS };
    return normalizeSettings(JSON.parse(raw) as Partial<Settings>);
  } catch {
    // Битый JSON — откатываемся к значениям по умолчанию
    return { ...DEFAULT_SETTINGS };
  }
}

function persist(value: Settings): void {
  try {
    localStorage.setItem(STORAGE_KEY, JSON.stringify(value));
  } catch {
    // Приватный режим или переполнение — молча игнорируем
  }
}

/** Применяет тему к <html data-theme>. */
export function applyTheme(theme: Settings['theme']): void {
  document.documentElement.setAttribute('data-theme', THEME_NAMES[theme]);
}

function createSettingsStore(): Writable<Settings> {
  const store = writable<Settings>(load());

  store.subscribe((value) => {
    persist(value);
    applyTheme(value.theme);
  });

  return store;
}

export const settings = createSettingsStore();

/** Точечное обновление настроек. */
export function updateSettings(patch: Partial<Settings>): void {
  settings.update((s) => normalizeSettings({ ...s, ...patch }));
}

/** Полный сброс к значениям по умолчанию. */
export function resetSettings(): void {
  settings.set({ ...DEFAULT_SETTINGS });
}

/** Текущее значение без подписки (для обработчиков событий). */
export function currentSettings(): Settings {
  return get(settings);
}
