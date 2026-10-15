/**
 * Связка «распознавание → трекер → подсветка». Аналог MainActivity.kt.
 *
 * Портированы 1:1 (по смыслу):
 *  - handleSpeech(): порядок вызовов трекера, статистики, рендера и контекста;
 *  - renderCursor(): секция по позиции, курсор в координатах секции, прогресс;
 *  - seekTo(): t.seek() + рендер + сохранение позиции + контекст;
 *  - onSearchModeChanged(): сброс searchSince и пересборка подсказки;
 *  - applyContext(): окно подсказки следует за позицией с порогом 40% contextAhead.
 *
 * Отличия от Android (осознанные):
 *  - нет Handler/Activity: состояние уходит в Svelte store;
 *  - нет SectionText/GutterSpan: текст секции рендерит Reader.svelte целиком;
 *  - нет Toast: сообщение «читаем отсюда» возвращается наружу.
 */

import type { Doc } from './text/Doc';
import { TextTracker, type Move } from './tracker/TextTracker';
import { NEURAL, VOSK, type TrackerConfig } from './tracker/TrackerConfig';
import { ContextWords } from './speech/ContextWords';
import { SessionStats } from './stats/SessionStats';
import { setTrackerState, resetTrackerState } from '../stores/tracker';

/** Какой движок используется: от этого зависит политика подсказки. */
export type EngineKind = 'NEURAL' | 'VOSK';

/** Длина «хвоста» услышанного для показа (как HEARD_CHARS в оригинале). */
export const HEARD_CHARS = 60;

export interface MainControllerCallbacks {
  /** Подсветку нужно перерисовать. forceScroll — принудительно прокрутить. */
  onCursorRendered(forceScroll: boolean): void;
  /** Сообщение для пользователя (аналог Toast). */
  onToast(message: string): void;
  /** Строка «слышу: …» изменилась. */
  onHeardChanged(tail: string): void;
}

export interface ControllerState {
  /** Индекс секции, которая сейчас показана. */
  sectionIndex: number;
  /** Позиция чтения в словах. */
  position: number;
  /** Уверенность 0..1. */
  confidence: number;
  /** Подсветка уверена. */
  locked: boolean;
  /** Идёт поиск места. */
  searchMode: boolean;
  /** Прогресс по документу, 0..1000 (как bookProgress в оригинале). */
  progress: number;
  /** Заголовок текущей секции. */
  sectionTitle: string;
  /** Процент по документу, 0..100. */
  percent: number;
}

export class MainController {
  private doc: Doc | null = null;
  private tracker: TextTracker | null = null;

  /** Двигатель конфигурации трекера. */
  private engineKind: EngineKind = 'NEURAL';

  /** Текущая показанная секция (-1 — ещё не выбрана). */
  private currentSection = -1;

  /** Центр последнего окна подсказки и признак, что подсказка установлена. */
  private contextCenter = -1;
  private contextActive = false;

  /** Момент включения поиска (для отложенного показа баннера). */
  private searchSince = 0;

  readonly stats = new SessionStats();

  constructor(private readonly callbacks: MainControllerCallbacks) {}

  // ---------- документ ----------

  /** Загружает документ: создаёт трекер и прогревает индексы в фоне. */
  loadDocument(doc: Doc, at = 0): void {
    this.doc = doc;
    this.engineKind = this.engineKind; // сохраняем выбор
    this.tracker = this.createTracker(doc, at);
    this.currentSection = -1;
    this.contextActive = false;
    this.contextCenter = -1;
    this.searchSince = 0;
    resetTrackerState();

    this.renderCursor(false, true);
  }

  /** Сбрасывает документ (например, при ошибке загрузки). */
  clearDocument(): void {
    this.doc = null;
    this.tracker = null;
    this.currentSection = -1;
    resetTrackerState();
  }

  private createTracker(doc: Doc, at: number): TextTracker {
    const tr = new TextTracker(doc, this.configFor(this.engineKind));
    tr.seek(at);
    // Прогрев индексов (posOf/vocab/bucket) — тяжёлый на длинных текстах
    scheduleIdle(() => {
      try {
        tr.warmUp();
      } catch {
        // Прогрев не критичен
      }
    });
    return tr;
  }

  private configFor(kind: EngineKind): TrackerConfig {
    return kind === 'VOSK' ? VOSK : NEURAL;
  }

  /** Смена движка: трекер пересоздаётся на той же позиции. */
  setEngine(kind: EngineKind): void {
    if (kind === this.engineKind) return;
    const at = this.tracker?.position ?? 0;
    this.engineKind = kind;
    if (this.doc) {
      this.tracker = this.createTracker(this.doc, at);
      this.contextActive = false;
      this.renderCursor(false, true);
    }
  }

  getDocument(): Doc | null {
    return this.doc;
  }

  getTracker(): TextTracker | null {
    return this.tracker;
  }

  // ---------- события распознавателя ----------

  /** Порт handleSpeech(text, isFinal = false). */
  onSpeechPartial(text: string): void {
    this.handleSpeech(text, false);
  }

  /** Порт handleSpeech(text, isFinal = true). */
  onSpeechFinal(text: string): void {
    this.handleSpeech(text, true);
  }

  private handleSpeech(text: string, isFinal: boolean): void {
    const t = this.tracker;
    if (!t) return;

    // heardText.text = getString(R.string.heard_format, heardTail(text))
    this.callbacks.onHeardChanged(heardTail(text));

    const wasSearching = t.searchMode;
    const move: Move | null = isFinal ? t.onFinal(text) : t.onPartial(text);

    if (move !== null) {
      // Считаем только обычное чтение вперёд: перескок — не «прочитано»
      if (move.delta > 0 && !move.far) this.stats.onForwardMove(move.delta);
      this.renderCursor(!move.far, false);
      this.publishState();
    }

    if (t.searchMode !== wasSearching) {
      this.onSearchModeChanged(t.searchMode);
    } else if (move !== null) {
      this.applyContext(false);
    }

    // reader.setLocked(t.locked)
    setTrackerState({ locked: t.locked });
  }

  /**
   * Читатель ушёл (поиск включился) или место найдено (выключился). У Vosk подсказка
   * ограничивает словарь, поэтому на время поиска она снимается, и возвращается уже
   * вокруг нового места. Нейросеть подсказкой словарь не ограничивает.
   */
  private onSearchModeChanged(searching: boolean): void {
    this.searchSince = searching ? Date.now() : 0;
    const restricts = this.engineKind === 'VOSK';

    if (searching) {
      if (restricts && this.contextActive) {
        this.setEngineContext(null);
        this.contextActive = false;
      }
    } else {
      this.applyContext(restricts);
    }

    // Оповещаем UI: баннер поиска показывается с задержкой
    this.publishState();
  }

  /** Сколько миллисекунд идёт поиск (0, если не идёт). */
  get searchElapsedMs(): number {
    return this.searchSince === 0 ? 0 : Date.now() - this.searchSince;
  }

  // ---------- подсветка ----------

  /**
   * Ставит подсветку по текущей позиции трекера.
   * Порт renderCursor(animate, forceScroll).
   */
  private renderCursor(animate: boolean, forceScroll: boolean): void {
    const d = this.doc;
    const t = this.tracker;
    if (!d || !t) return;
    if (d.size === 0) return;

    void animate; // анимацию делает Reader.svelte через CSS-переход

    const pos = t.position;
    const sectionIndex = d.sectionOfWord(pos >= d.size ? d.size - 1 : pos);
    const switched = sectionIndex !== this.currentSection;

    if (switched) {
      this.currentSection = sectionIndex;
    }

    // reader.setCursor(...) + scrollToCursor(force = forceScroll || switched)
    this.callbacks.onCursorRendered(forceScroll || switched);

    this.publishState();

    // reader.setLocked(t.locked)
    setTrackerState({ locked: t.locked });
  }

  /** Публикует состояние в store. */
  publishState(): void {
    const d = this.doc;
    const t = this.tracker;

    if (!d || !t || d.size === 0) {
      setTrackerState({ currentWord: 0 });
      return;
    }

    const pos = t.position;
    setTrackerState({
      currentWord: pos,
      confidence: t.confidence,
      locked: t.locked,
      searchMode: t.searchMode
    });
  }

  /** Состояние для UI (прогресс, заголовок секции). */
  getState(): ControllerState {
    const d = this.doc;
    const t = this.tracker;

    if (!d || !t || d.size === 0) {
      return {
        sectionIndex: 0,
        position: 0,
        confidence: 0.5,
        locked: true,
        searchMode: false,
        progress: 0,
        sectionTitle: '',
        percent: 0
      };
    }

    const pos = t.position;
    const idx = this.currentSection >= 0 ? this.currentSection : d.sectionOfWord(pos);
    const sec = d.sections[idx];

    return {
      sectionIndex: idx,
      position: pos,
      confidence: t.confidence,
      locked: t.locked,
      searchMode: t.searchMode,
      progress: Math.trunc((pos * 1000) / d.size),
      sectionTitle: sec?.title ?? '',
      percent: Math.trunc((pos * 100) / d.size)
    };
  }

  // ---------- перескок ----------

  /** Порт seekToOffset: тапнули по смещению в тексте секции. */
  seekToOffset(offset: number): void {
    const d = this.doc;
    if (!d || d.size === 0) return;

    const sec = d.sections[this.currentSection];
    if (!sec) return;

    const word = clamp(d.wordAtOffset(sec.start + offset), 0, d.size - 1);
    this.seekToWord(word);

    const sample = d.text.slice(d.wordStart[word]!, d.wordEnd[word]!);
    this.callbacks.onToast(`Читаем отсюда: «${sample}»`);
  }

  /** Порт seekTo(word): ставит позицию вручную и сбрасывает поиск. */
  seekToWord(word: number): void {
    const t = this.tracker;
    if (!t) return;

    t.seek(word); // заодно выключает поиск места
    this.searchSince = 0;
    this.renderCursor(false, true);
    this.applyContext(true);
  }

  // ---------- подсказка распознавателю ----------

  /** Заглушка: на этапе 6 подсказка не подключена к Vosk. */
  private setEngineContext(_words: string[] | null): void {
    // Интеграция grammar/hotwords — отдельная задача
  }

  /**
   * Окно подсказки следует за позицией чтения.
   * Порт applyContext(force).
   */
  private applyContext(force: boolean): void {
    const d = this.doc;
    const t = this.tracker;
    if (!d || !t) return;

    if (t.searchMode) {
      if (this.contextActive) {
        this.setEngineContext(null);
        this.contextActive = false;
      }
      return;
    }

    // Порог: не пересобираем окно, пока позиция не ушла на 40% вперёд
    const limit = Math.trunc(this.contextAhead * 0.4);
    if (!force && this.contextActive && Math.abs(t.position - this.contextCenter) <= limit) {
      return;
    }

    this.contextCenter = t.position;
    this.contextActive = true;

    const words = ContextWords.window(
      d,
      t.position,
      this.contextBack,
      this.contextAhead
    );

    this.setEngineContext(words);
  }

  /** Размеры окна подсказки (как в VoskEngine/NeuralEngine). */
  private get contextBack(): number {
    return this.engineKind === 'VOSK' ? 50 : 100;
  }

  private get contextAhead(): number {
    return this.engineKind === 'VOSK' ? 250 : 500;
  }

  // ---------- прослушивание ----------

  /** Прослушивание включилось/выключилось: время идёт только пока слушаем. */
  onListeningChanged(listening: boolean): void {
    if (listening) {
      this.stats.start();
    } else {
      this.stats.pause();
    }
  }
}

/** Хвост услышанного для показа: по границе слова, чтобы первое слово не обрезалось. */
export function heardTail(text: string): string {
  if (text.length <= HEARD_CHARS) return text;
  const tail = text.slice(-HEARD_CHARS);
  const sp = tail.indexOf(' ');
  return '…' + (sp >= 0 ? tail.slice(sp + 1) : tail);
}

function clamp(v: number, min: number, max: number): number {
  return Math.min(Math.max(v, min), max);
}

/**
 * Планирует тяжёлую работу вне кадра отрисовки.
 * Аналог фонового потока для warmUp() в оригинале.
 */
function scheduleIdle(task: () => void): void {
  const ric = (globalThis as { requestIdleCallback?: (cb: () => void) => void })
    .requestIdleCallback;
  if (typeof ric === 'function') {
    ric(task);
  } else {
    setTimeout(task, 0);
  }
}
