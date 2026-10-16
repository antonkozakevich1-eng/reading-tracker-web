/**
 * Диагностика распознавания: зеркало состояния, только чтение.
 *
 * Панель ничего не вычисляет и не меняет в логике — она показывает то,
 * что уже произошло: услышанный текст, результат трекера, счётчики.
 * Включается флагом ?debug=1 и в обычном режиме не существует.
 */

import { writable, get, type Writable } from 'svelte/store';

/** Одна запись истории: что услышали и что из этого вышло. */
export interface DiagEntry {
  /** Время от старта сессии, секунды с десятыми. */
  t: string;
  /** 'final' или 'partial'. */
  kind: 'final' | 'partial';
  /** Текст от распознавателя. */
  text: string;
  /** Позиция трекера после обработки. */
  pos: number;
  /** Сдвинулась ли подсветка (null — трекер не принял решение). */
  move: boolean | null;
  /** Перескок, а не чтение (null — если move нет). */
  far: boolean | null;
  /** Уверенность 0..1. */
  confidence: number;
  /** Режим поиска места. */
  searchMode: boolean;
  /** Слов подряд без подтверждения. */
  unconfirmed: number;
  /** Индекс текущей песни. */
  section: number;
}

export interface DiagState {
  /** Включена ли диагностика (флаг ?debug=1 или 5 тапов). */
  enabled: boolean;
  /** Последний final-текст. */
  lastFinal: string;
  /** Последний partial-текст (обновляется часто). */
  lastPartial: string;
  /** Живое состояние трекера. */
  current: Omit<DiagEntry, 't' | 'kind' | 'text'> | null;
  /** История последних событий. */
  history: DiagEntry[];
}

/** Сколько записей держим в истории. */
const HISTORY_MAX = 12;

const start = Date.now();

function stamp(): string {
  return ((Date.now() - start) / 1000).toFixed(1);
}

const initial: DiagState = {
  enabled: false,
  lastFinal: '',
  lastPartial: '',
  current: null,
  history: []
};

export const diagStore: Writable<DiagState> = writable({ ...initial });

/** Включает или выключает панель. */
export function setDiagEnabled(enabled: boolean): void {
  diagStore.update((s) => ({ ...s, enabled }));
}

/** Запоминает услышанный текст. */
export function recordSpeech(kind: 'final' | 'partial', text: string): void {
  diagStore.update((s) =>
    kind === 'final' ? { ...s, lastFinal: text } : { ...s, lastPartial: text }
  );
}

/** Запоминает результат трекера. */
export function recordTracker(
  kind: 'final' | 'partial',
  text: string,
  result: {
    pos: number;
    move: boolean | null;
    far: boolean | null;
    confidence: number;
    searchMode: boolean;
    unconfirmed: number;
    section: number;
  }
): void {
  diagStore.update((s) => {
    const entry: DiagEntry = { t: stamp(), kind, text, ...result };

    // Partial-события не засоряют историю: там важны только finals
    const history = kind === 'final' ? [...s.history, entry].slice(-HISTORY_MAX) : s.history;

    return { ...s, current: result, history };
  });
}

/** Очищает историю, оставляя панель включённой. */
export function clearDiag(): void {
  diagStore.update((s) => ({ ...s, history: [], lastFinal: '', lastPartial: '', current: null }));
}

/**
 * Собирает всё содержимое панели в текст для отправки.
 * Формат — компактный, чтобы влезло в одно сообщение.
 */
export function diagReport(): string {
  const s = get(diagStore);
  const lines: string[] = [];

  lines.push('=== Трекер чтения: диагностика ===');
  lines.push(`флаг: ${s.enabled ? 'включена' : 'выключена'}`);
  lines.push(`userAgent: ${navigator.userAgent}`);
  lines.push('');

  if (s.current) {
    const c = s.current;
    lines.push('--- текущее состояние ---');
    lines.push(`позиция: ${c.pos}`);
    lines.push(`уверенность: ${c.confidence.toFixed(3)}`);
    lines.push(`поиск места: ${c.searchMode ? 'ДА' : 'нет'}`);
    lines.push(`не подтверждено слов: ${c.unconfirmed}`);
    lines.push(`песнь №: ${c.section + 1}`);
    lines.push('');
  }

  lines.push('--- последнее услышанное ---');
  lines.push(`final:   «${s.lastFinal}»`);
  lines.push(`partial: «${s.lastPartial}»`);
  lines.push('');

  lines.push(`--- история final (${s.history.length}) ---`);
  if (s.history.length === 0) {
    lines.push('(пусто)');
  } else {
    for (const e of s.history) {
      const move = e.move === null ? 'null' : e.move ? 'YES' : 'no';
      const far = e.far === null ? '-' : e.far ? 'FAR' : 'near';
      lines.push(
        `[${e.t}s] pos=${e.pos} move=${move} ${far} conf=${e.confidence.toFixed(2)} ` +
          `search=${e.searchMode ? 'Y' : 'n'} unconf=${e.unconfirmed} песнь=${e.section + 1}`
      );
      lines.push(`        «${e.text}»`);
    }
  }

  return lines.join('\n');
}
