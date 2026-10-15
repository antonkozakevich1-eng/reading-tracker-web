/**
 * Состояние трекера для UI. Аналог полей MainActivity, которые читает ReaderView.
 */

import { writable, get, type Writable } from 'svelte/store';

export interface TrackerState {
  /** Индекс текущего читаемого слова (абсолютный по документу). */
  currentWord: number;
  /** Уверенность, что читают именно здесь, 0..1. */
  confidence: number;
  /** Подсветка стоит уверенно (плотная плашка) или поиск места (бледная). */
  locked: boolean;
  /** Трекер потерял место и ищет его по всему тексту. */
  searchMode: boolean;
  /** Распознанных слов без подтверждения места. */
  unconfirmedCount: number;
}

const initialState: TrackerState = {
  currentWord: 0,
  confidence: 0.5,
  locked: true,
  searchMode: false,
  unconfirmedCount: 0
};

export const trackerStore: Writable<TrackerState> = writable({ ...initialState });

/** Текущее состояние без подписки. */
export function currentTrackerState(): TrackerState {
  return get(trackerStore);
}

/** Частичное обновление. */
export function setTrackerState(patch: Partial<TrackerState>): void {
  trackerStore.update((s) => ({ ...s, ...patch }));
}

/** Сброс к началу документа. */
export function resetTrackerState(): void {
  trackerStore.set({ ...initialState });
}
