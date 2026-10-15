/**
 * Хранилище текущего документа и позиции чтения.
 * Позиция сохраняется в IndexedDB (аналог SharedPreferences pos:<key> в оригинале).
 */

import { writable, get, type Writable } from 'svelte/store';
import { Doc } from '../lib/text/Doc';
import { loadBuiltinText } from '../lib/io/TextLoader';

const DB_NAME = 'reading-tracker';
const DB_VERSION = 1;
const STORE_POSITIONS = 'positions';
const STORE_DOCS = 'docs';

/** Ключ встроенного документа (как Settings.DOC_ASSET в оригинале). */
export const DOC_BUILTIN = 'asset';

export interface DocumentState {
  /** Ключ документа: 'asset' или имя файла. */
  key: string;
  /** Заголовок для шапки. */
  title: string;
  /** Разобранный документ. */
  doc: Doc | null;
  /** Позиция чтения в словах. */
  position: number;
  /** Идёт загрузка. */
  loading: boolean;
  /** Ошибка загрузки, если была. */
  error: string | null;
}

const initialState: DocumentState = {
  key: DOC_BUILTIN,
  title: 'Гомер. Одиссея (пер. Жуковского)',
  doc: null,
  position: 0,
  loading: false,
  error: null
};

export const documentStore: Writable<DocumentState> = writable({ ...initialState });

/** Текущее состояние без подписки. */
export function currentDocument(): DocumentState {
  return get(documentStore);
}

// --- IndexedDB ---

let dbPromise: Promise<IDBDatabase> | null = null;

function openDb(): Promise<IDBDatabase> {
  if (dbPromise) return dbPromise;

  dbPromise = new Promise((resolve, reject) => {
    const req = indexedDB.open(DB_NAME, DB_VERSION);

    req.onupgradeneeded = () => {
      const db = req.result;
      if (!db.objectStoreNames.contains(STORE_POSITIONS)) {
        db.createObjectStore(STORE_POSITIONS);
      }
      if (!db.objectStoreNames.contains(STORE_DOCS)) {
        db.createObjectStore(STORE_DOCS);
      }
    };

    req.onsuccess = () => resolve(req.result);
    req.onerror = () => reject(req.error ?? new Error('IndexedDB недоступен'));
  });

  return dbPromise;
}

async function idbGet<T>(store: string, key: string): Promise<T | undefined> {
  try {
    const db = await openDb();
    return await new Promise<T | undefined>((resolve, reject) => {
      const tx = db.transaction(store, 'readonly');
      const req = tx.objectStore(store).get(key);
      req.onsuccess = () => resolve(req.result as T | undefined);
      req.onerror = () => reject(req.error);
    });
  } catch {
    return undefined;
  }
}

async function idbSet(store: string, key: string, value: unknown): Promise<void> {
  try {
    const db = await openDb();
    await new Promise<void>((resolve, reject) => {
      const tx = db.transaction(store, 'readwrite');
      tx.objectStore(store).put(value, key);
      tx.oncomplete = () => resolve();
      tx.onerror = () => reject(tx.error);
    });
  } catch {
    // Приватный режим и т.п. — позиция просто не сохранится
  }
}

async function idbDelete(store: string, key: string): Promise<void> {
  try {
    const db = await openDb();
    await new Promise<void>((resolve, reject) => {
      const tx = db.transaction(store, 'readwrite');
      tx.objectStore(store).delete(key);
      tx.oncomplete = () => resolve();
      tx.onerror = () => reject(tx.error);
    });
  } catch {
    // игнорируем
  }
}

// --- Публичный API ---

/** Сохраняет позицию чтения для текущего документа. */
export async function savePosition(position: number): Promise<void> {
  const state = get(documentStore);
  await idbSet(STORE_POSITIONS, state.key, position);
  documentStore.update((s) => ({ ...s, position }));
}

/** Сохраняет позицию без изменения store (для частых вызовов). */
export async function persistPosition(key: string, position: number): Promise<void> {
  await idbSet(STORE_POSITIONS, key, position);
}

/** Читает сохранённую позицию. */
export async function loadPosition(key: string): Promise<number> {
  const v = await idbGet<number>(STORE_POSITIONS, key);
  return typeof v === 'number' && Number.isFinite(v) && v >= 0 ? v : 0;
}

/** Устанавливает позицию в store (без записи в БД). */
export function setPosition(position: number): void {
  documentStore.update((s) => ({ ...s, position }));
}

/**
 * Устанавливает документ из готового текста.
 * title — отображаемое имя, key — идентификатор для хранения позиции.
 */
export async function setDocument(
  text: string,
  key: string,
  title: string
): Promise<void> {
  documentStore.update((s) => ({ ...s, loading: true, error: null, key, title }));

  try {
    const doc = Doc.parse(text);
    const position = await loadPosition(key);

    documentStore.set({
      key,
      title,
      doc,
      position: Math.min(position, Math.max(0, doc.size - 1)),
      loading: false,
      error: null
    });
  } catch (e) {
    documentStore.update((s) => ({
      ...s,
      loading: false,
      error: e instanceof Error ? e.message : 'Не удалось обработать текст'
    }));
  }
}

/** Загружает встроенную «Одиссею». */
export async function loadBuiltin(): Promise<void> {
  documentStore.update((s) => ({ ...s, loading: true, error: null }));

  try {
    const text = await loadBuiltinText();
    const doc = Doc.parse(text);
    const position = await loadPosition(DOC_BUILTIN);

    documentStore.set({
      key: DOC_BUILTIN,
      title: 'Гомер. Одиссея (пер. Жуковского)',
      doc,
      position: Math.min(position, Math.max(0, doc.size - 1)),
      loading: false,
      error: null
    });
  } catch (e) {
    documentStore.update((s) => ({
      ...s,
      loading: false,
      error: e instanceof Error ? e.message : 'Не удалось загрузить «Одиссею»'
    }));
  }
}

/** Сохраняет пользовательский текст, чтобы открыть его после перезагрузки. */
export async function persistCustomText(key: string, text: string): Promise<void> {
  await idbSet(STORE_DOCS, key, text);
}

/** Читает сохранённый пользовательский текст. */
export async function loadCustomText(key: string): Promise<string | undefined> {
  return idbGet<string>(STORE_DOCS, key);
}

/** Забывает пользовательский документ. */
export async function forgetCustomText(key: string): Promise<void> {
  await idbDelete(STORE_DOCS, key);
  await idbDelete(STORE_POSITIONS, key);
}

// --- throttled-сохранение позиции ---

/** Не чаще одного раза в 500 мс — как задумано для частых move. */
const POSITION_THROTTLE_MS = 500;

let pendingPosition: number | null = null;
let pendingKey: string | null = null;
let flushTimer: ReturnType<typeof setTimeout> | null = null;

/**
 * Сохраняет позицию с ограничением частоты.
 * Вызывается на каждое продвижение трекера, пишет в IndexedDB
 * не чаще POSITION_THROTTLE_MS.
 */
export function savePositionThrottled(docKey: string, position: number): void {
  pendingKey = docKey;
  pendingPosition = position;

  if (flushTimer !== null) return;

  flushTimer = setTimeout(() => {
    flushTimer = null;
    void flushPosition();
  }, POSITION_THROTTLE_MS);
}

/** Немедленно записывает отложенную позицию (перед закрытием вкладки). */
export async function flushPosition(): Promise<void> {
  if (flushTimer !== null) {
    clearTimeout(flushTimer);
    flushTimer = null;
  }

  const key = pendingKey;
  const pos = pendingPosition;
  pendingKey = null;
  pendingPosition = null;

  if (key !== null && pos !== null) {
    await persistPosition(key, pos);
  }
}

// Сохраняем позицию при уходе со страницы — иначе потеряется последний move
if (typeof window !== 'undefined') {
  window.addEventListener('pagehide', () => {
    void flushPosition();
  });
  document.addEventListener('visibilitychange', () => {
    if (document.visibilityState === 'hidden') void flushPosition();
  });
}
