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
    const out: { word: number; text: string; line: number }[] = [];
    for (let i = section.firstWord; i < section.endWord && i < doc.size; i++) {
      out.push({
        word: i,
        text: doc.text.slice(doc.wordStart[i]!, doc.wordEnd[i]!),
        line: lineOf(doc.text, doc.wordStart[i]!)
      });
    }
    return out;
  });

  /**
   * Разбиение на строки-стихи: в поэме каждый стих с новой строки,
   * и это нужно сохранить в вёрстке (иначе текст слипается в абзац).
   * Каждому слову сразу кладём его индекс — чтобы не искать в цикле.
   */
  const lines = $derived.by(() => {
    const out: { line: number; words: { word: number; text: string; index: number }[] }[] = [];
    let current: (typeof out)[number] | null = null;

    for (let i = 0; i < sectionWords.length; i++) {
      const w = sectionWords[i]!;
      if (current === null || w.line !== current.line) {
        current = { line: w.line, words: [] };
        out.push(current);
      }
      current.words.push({ word: w.word, text: w.text, index: i });
    }
    return out;
  });

  /** Номер строки, в которой начинается смещение offset. */
  function lineOf(text: string, offset: number): number {
    let n = 0;
    for (let i = 0; i < offset && i < text.length; i++) {
      if (text.charCodeAt(i) === 10) n++;
    }
    return n;
  }

  /** Индекс текущего слова внутри sectionWords. */
  const cursorIndex = $derived(sectionWords.findIndex((w) => w.word >= cursorWord));

  // --- ссылки на элементы слов для прокрутки ---

  /**
   * Элементы слов. Заполняются через action, а не `bind:this={arr[i]}`:
   * индексная привязка не уведомляет реактивную систему, из-за чего
   * эффект прокрутки не перезапускался и автопрокрутка не работала.
   */
  const wordEls: (HTMLElement | undefined)[] = [];

  /** Регистрирует элемент слова; возвращает очистку для Svelte. */
  function wordRef(node: HTMLElement, index: number): { destroy(): void } {
    wordEls[index] = node;
    return {
      destroy() {
        if (wordEls[index] === node) delete wordEls[index];
      }
    };
  }

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

    // Позиция слова относительно содержимого контейнера.
    // offsetTop не зависит от текущей прокрутки — в отличие от
    // getBoundingClientRect(), который меняется между кадрами.
    const top = offsetWithin(target, el);
    const bottom = top + (target.offsetHeight || 0);
    const y = el.scrollTop;

    // force || top < y + h*0.12 || bottom > y + h*0.62
    if (force || top < y + h * 0.12 || bottom > y + h * 0.62) {
      const dest = Math.max(0, Math.trunc(top - h * 0.3));

      // Помечаем прокрутку как нашу: событие scroll не должно
      // обнулять таймер пользовательского касания
      programmaticScroll = true;
      el.scrollTo({ top: dest, behavior: force ? 'auto' : 'smooth' });

      if (force) {
        requestAnimationFrame(() => {
          programmaticScroll = false;
        });
      } else {
        // Плавная прокрутка идёт ~300 мс
        setTimeout(() => {
          programmaticScroll = false;
        }, 400);
      }
    }
  }

  /** Смещение элемента относительно содержимого контейнера прокрутки. */
  function offsetWithin(node: HTMLElement, container: HTMLElement): number {
    let top = 0;
    let cur: HTMLElement | null = node;
    while (cur && cur !== container) {
      top += cur.offsetTop;
      cur = cur.offsetParent as HTMLElement | null;
    }
    return top;
  }

  // --- реакция на смену позиции ---

  /**
   * Автопрокрутка за курсором.
   * Зависим от cursorIndex (индекс внутри секции) и sectionIndex:
   * при смене позиции эффект перезапускается и прокручивает к слову.
   */
  $effect(() => {
    void cursorIndex;
    void sectionIndex;
    void autoScroll;

    // Ждём кадр: элементы слов регистрируются actions'ами при рендере
    const raf = requestAnimationFrame(() => {
      scrollToCursor(false);
    });
    return () => cancelAnimationFrame(raf);
  });

  // Принудительная прокрутка по внешнему сигналу (смена секции, seek, смена шрифта)
  $effect(() => {
    void forceScrollToken;

    const raf = requestAnimationFrame(() => {
      scrollToCursor(true);
    });
    return () => cancelAnimationFrame(raf);
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
    <div class="poem">
      {#each lines as ln (`${ln.line}`)}
        <p class="verse">
          {#each ln.words as w (w.word)}
            <span
              class="word"
              class:read={w.index < cursorIndex}
              class:cursor={w.index === cursorIndex}
              class:flash={flashWord === w.word}
              use:wordRef={w.index}
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
      {/each}
    </div>
  {/if}
</div>

<style>
  .reader {
    height: 100%;
    overflow-y: auto;
    -webkit-overflow-scrolling: touch;
    /* Mobile-first: 14px по бокам — каждый пиксель ширины важен для стиха */
    padding: 14px 14px 30vh;
    padding-left: max(14px, env(safe-area-inset-left));
    padding-right: max(14px, env(safe-area-inset-right));
    /* Изолируем отрисовку: изменения курсора не задевают остальной UI */
    contain: layout style paint;
    /* iOS: вертикальная прокрутка, без горизонтальных жестов */
    touch-action: pan-y;
    overscroll-behavior: contain;
  }

  /* На широких экранах — центрированная колонка, комфортная для чтения */
  @media (min-width: 1024px) {
    .reader {
      padding: 24px 32px 40vh;
    }
  }

  .poem {
    margin: 0 auto;
    max-width: 34em;
  }

  /* Стих: каждый с новой строки. Перенос внутри стиха получает
     висячий отступ, чтобы продолжение не путалось со следующим стихом. */
  .verse {
    margin: 0 0 0.35em;
    padding-left: 1.1em;
    text-indent: -1.1em;
    font-family: var(--font-family);
    font-size: var(--font-size);
    line-height: var(--line-height);
    color: var(--text-main);
    overflow-wrap: break-word;
    hyphens: none;
    text-wrap: pretty;
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
