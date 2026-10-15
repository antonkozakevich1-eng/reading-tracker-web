<script lang="ts">
  /**
   * Область чтения. Порт ReaderView.kt.
   *
   * Портируемая логика:
   *  - подсветка текущего слова и приглушение прочитанного (readSpan + pillTextSpan);
   *  - «плашка» на текущем слове (PillView) — рисуется под текстом, alpha зависит от locked;
   *  - автопрокрутка scrollToCursor(): порог 12%/62% видимой области, цель — 30% от верха,
   *    пауза USER_SCROLL_PAUSE_MS = 4000 мс после касания пользователем;
   *  - долгое нажатие на слово → перескок (onLongPress с offset).
   */
  import { onDestroy } from 'svelte';
  import type { Doc } from '../lib/text/Doc';

  interface Props {
    doc: Doc | null;
    /** Текущая позиция в словах (абсолютная по документу). */
    position: number;
    /** Подсветка уверена (плотная плашка) или поиск места (бледная). */
    locked?: boolean;
    /** Индекс секции для отображения. */
    sectionIndex: number;
    fontSp?: number;
    serif?: boolean;
    lineSpacing?: number;
    autoScroll?: boolean;
    /** forceScroll — прокрутить принудительно, игнорируя паузу. */
    forceScrollToken?: number;
    /** Долгое нажатие на слово: индекс слова в документе. */
    onSeekWord?: (word: number) => void;
  }

  let {
    doc,
    position,
    locked = true,
    sectionIndex,
    fontSp = 22,
    serif = true,
    lineSpacing = 1.35,
    autoScroll = true,
    forceScrollToken = 0,
    onSeekWord
  }: Props = $props();

  /** Пауза автопрокрутки после ручного взаимодействия (как USER_SCROLL_PAUSE_MS). */
  const USER_SCROLL_PAUSE_MS = 4000;

  /** Длительность долгого нажатия. */
  const LONG_PRESS_MS = 500;

  let scrollEl: HTMLDivElement | undefined = $state();

  /** Время последнего касания пользователем — пока не прошло 4 с, автопрокрутка молчит. */
  let lastUserTouch = 0;

  /** Слово, на котором стоит подсветка (абсолютный индекс), либо -1. */
  const cursorWord = $derived(position);

  /** Секция, которую сейчас показываем. */
  const section = $derived(
    doc && doc.sections.length > 0
      ? (doc.sections[Math.min(sectionIndex, doc.sections.length - 1)] ?? null)
      : null
  );

  /**
   * Слова секции с абсолютными индексами.
   * Нужны, чтобы подсветка знала границы и могла сопоставить позицию.
   */
  const sectionWords = $derived.by(() => {
    if (!doc || !section) return [];
    const out: { word: number; text: string }[] = [];
    for (let i = section.firstWord; i < section.endWord && i < doc.size; i++) {
      out.push({
        word: i,
        text: doc.text.slice(doc.wordStart[i]!, doc.wordEnd[i]!)
      });
    }
    return out;
  });

  /** Индекс текущего слова внутри sectionWords. */
  const cursorIndex = $derived(sectionWords.findIndex((w) => w.word >= cursorWord));

  // --- ссылки на элементы слов для прокрутки ---

  let wordEls: (HTMLElement | undefined)[] = $state([]);

  /** Программная прокрутка не должна считаться ручной. */
  let programmaticScroll = false;

  /** Порт scrollToCursor(force). */
  function scrollToCursor(force: boolean): void {
    if (cursorIndex < 0) return;

    // !force && (!autoScroll || прошло меньше 4 с после касания) → не трогаем
    if (!force && (!autoScroll || Date.now() - lastUserTouch < USER_SCROLL_PAUSE_MS)) {
      return;
    }

    const el = scrollEl;
    const target = wordEls[cursorIndex];
    if (!el || !target) return;

    const h = el.clientHeight;
    if (h <= 0) {
      requestAnimationFrame(() => scrollToCursor(force));
      return;
    }

    const elRect = el.getBoundingClientRect();
    const tRect = target.getBoundingClientRect();

    // Координаты цели относительно содержимого прокрутки
    const top = tRect.top - elRect.top + el.scrollTop;
    const bottom = tRect.bottom - elRect.top + el.scrollTop;
    const y = el.scrollTop;

    // force || top < y + h*0.12 || bottom > y + h*0.62
    if (force || top < y + h * 0.12 || bottom > y + h * 0.62) {
      const dest = Math.max(0, Math.trunc(top - h * 0.3));

      // Помечаем прокрутку как нашу: событие scroll не должно
      // обнулять таймер пользовательского касания
      programmaticScroll = true;
      el.scrollTo({ top: dest, behavior: force ? 'auto' : 'smooth' });

      const clear = (): void => {
        programmaticScroll = false;
      };
      if (force) {
        requestAnimationFrame(clear);
      } else {
        // Плавная прокрутка идёт ~300 мс
        setTimeout(clear, 400);
      }
    }
  }

  // --- реакция на смену позиции ---

  $effect(() => {
    // Зависимости
    void cursorWord;
    void autoScroll;

    requestAnimationFrame(() => scrollToCursor(false));
  });

  // Принудительная прокрутка по внешнему сигналу (смена секции, seek, смена шрифта)
  $effect(() => {
    void sectionIndex;
    void forceScrollToken;

    wordEls = [];
    requestAnimationFrame(() => requestAnimationFrame(() => scrollToCursor(true)));
  });

  // --- отслеживание касаний пользователя ---

  function markUserTouch(): void {
    lastUserTouch = Date.now();
  }

  function onWheel(): void {
    markUserTouch();
  }

  function onKeyDown(e: KeyboardEvent): void {
    // Стрелки, PageUp/PageDown, Home/End — ручная прокрутка
    const keys = ['ArrowUp', 'ArrowDown', 'PageUp', 'PageDown', 'Home', 'End', ' '];
    if (keys.includes(e.key)) markUserTouch();
  }

  // Выделение текста тоже задерживает автопрокрутку
  function onSelectionChange(): void {
    const sel = window.getSelection();
    if (sel && !sel.isCollapsed) markUserTouch();
  }

  $effect(() => {
    document.addEventListener('keydown', onKeyDown);
    document.addEventListener('selectionchange', onSelectionChange);
    return () => {
      document.removeEventListener('keydown', onKeyDown);
      document.removeEventListener('selectionchange', onSelectionChange);
    };
  });

  // Тач-скролл и перетаскивание полосы прокрутки тоже считаются ручным листанием.
  // Вешаем нативно: тач-скролл не даёт pointerdown на контейнере.
  $effect(() => {
    const el = scrollEl;
    if (!el) return;

    const touch = (): void => markUserTouch();
    const down = (e: MouseEvent): void => {
      // Только сам скроллбар (клик по тексту обрабатывают слова)
      if (e.target === el) markUserTouch();
    };

    el.addEventListener('touchstart', touch, { passive: true });
    el.addEventListener('touchmove', touch, { passive: true });
    el.addEventListener('mousedown', down);
    el.addEventListener('scroll', onScroll, { passive: true });

    return () => {
      el.removeEventListener('touchstart', touch);
      el.removeEventListener('touchmove', touch);
      el.removeEventListener('mousedown', down);
      el.removeEventListener('scroll', onScroll);
    };
  });

  /** Программная прокрутка не должна считаться ручной. */
  function onScroll(): void {
    if (programmaticScroll) return;
    // Скролл без нашего участия = пользователь листает
    markUserTouch();
  }

  // --- долгое нажатие ---

  let pressTimer: ReturnType<typeof setTimeout> | null = null;
  let pressedWord: number | null = null;
  /** Слово, на котором мигнула вспышка. */
  let flashWord: number | null = $state(null);

  function onPointerDown(e: PointerEvent, word: number): void {
    if (e.button !== 0) return;
    markUserTouch();
    pressedWord = word;

    pressTimer = setTimeout(() => {
      if (pressedWord !== null && onSeekWord) {
        onSeekWord(pressedWord);
        flashWord = pressedWord;
        setTimeout(() => {
          if (flashWord === pressedWord) flashWord = null;
        }, 400);
        navigator.vibrate?.(15);
      }
      pressTimer = null;
      pressedWord = null;
    }, LONG_PRESS_MS);
  }

  function cancelPress(): void {
    if (pressTimer !== null) {
      clearTimeout(pressTimer);
      pressTimer = null;
    }
    pressedWord = null;
  }

  onDestroy(() => {
    cancelPress();
  });
</script>

<div
  class="reader"
  bind:this={scrollEl}
  onwheel={onWheel}
  style:--font-size="{fontSp}px"
  style:--line-height={lineSpacing}
  style:--font-family={serif ? 'var(--font-serif)' : 'var(--font-sans)'}
  style:--pill-alpha={locked ? 1 : 0.45}
>
  {#if !doc}
    <div class="placeholder">Текст не загружен</div>
  {:else if sectionWords.length === 0}
    <div class="placeholder">В этой секции нет текста</div>
  {:else}
    <p class="paragraph">
      {#each sectionWords as w, i (w.word)}
        <span
          class="word"
          class:read={i < cursorIndex}
          class:cursor={i === cursorIndex}
          class:flash={flashWord === w.word}
          bind:this={wordEls[i]}
          onpointerdown={(e) => onPointerDown(e, w.word)}
          onpointerup={cancelPress}
          onpointerleave={cancelPress}
          onpointercancel={cancelPress}
          role="button"
          tabindex="-1"
          >{w.text}</span
        >{' '}
      {/each}
    </p>
  {/if}
</div>

<style>
  .reader {
    height: 100%;
    overflow-y: auto;
    padding: 16px 20px 220px;
    -webkit-overflow-scrolling: touch;
  }

  .paragraph {
    margin: 0 auto;
    max-width: 46em;
    font-family: var(--font-family);
    font-size: var(--font-size);
    line-height: var(--line-height);
    color: var(--text-main);
    overflow-wrap: break-word;
    hyphens: none;
  }

  .word {
    cursor: pointer;
    /* Не выделяем при долгом нажатии — иначе выделяется текст */
    user-select: none;
    -webkit-user-select: none;
    -webkit-tap-highlight-color: transparent;
    border-radius: 3px;
    transition: color 150ms ease, background-color 150ms ease;
  }

  /* Уже прочитанное — приглушено (аналог readSpan) */
  .word.read {
    color: var(--read);
  }

  /* Текущее слово — плашка. Alpha зависит от locked, как pill.paint.alpha */
  .word.cursor {
    background: var(--pill-bg);
    color: var(--hl-text);
    opacity: var(--pill-alpha);
    padding: 0 2px;
    margin: 0 -2px;
    transition: color 150ms ease, background-color 150ms ease, opacity 200ms ease;
  }

  /* Вспышка при перескоке */
  .word.flash {
    background: var(--accent);
    color: var(--on-accent);
    animation: flash-pulse 400ms ease-out;
  }

  @keyframes flash-pulse {
    0% {
      background: var(--accent);
    }
    100% {
      background: transparent;
    }
  }

  .placeholder {
    max-width: 46em;
    margin: 40px auto;
    text-align: center;
    color: var(--text-dim);
  }
</style>
