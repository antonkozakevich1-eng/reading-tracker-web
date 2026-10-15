<script lang="ts">
  /**
   * Область чтения. Порт android ReaderView.
   *
   * Рендерит секцию документа как поток слов, подсвечивает прочитанное
   * и текущее слово («pill»), поддерживает автопрокрутку с паузой
   * после ручного скролла и долгое нажатие для перескока.
   */
  import { onMount, onDestroy } from 'svelte';
  import type { Doc } from '../lib/text/Doc';

  interface Props {
    doc: Doc | null;
    /** Текущая позиция в словах (абсолютная по документу). */
    position: number;
    /** Индекс секции для отображения. */
    sectionIndex: number;
    fontSp?: number;
    serif?: boolean;
    lineSpacing?: number;
    autoScroll?: boolean;
    /** Вызывается при долгом нажатии на слово. */
    onSeekWord?: (word: number) => void;
  }

  let {
    doc,
    position,
    sectionIndex,
    fontSp = 22,
    serif = true,
    lineSpacing = 1.35,
    autoScroll = true,
    onSeekWord
  }: Props = $props();

  /** Пауза автопрокрутки после ручного взаимодействия (как в оригинале). */
  const USER_SCROLL_PAUSE_MS = 4000;

  let scrollEl: HTMLDivElement | undefined = $state();
  let lastUserScroll = 0;
  /** Элементы слов: нужны, чтобы прокрутить к текущему. */
  let wordEls: (HTMLElement | undefined)[] = $state([]);

  /** Секция, которую сейчас показываем. */
  const section = $derived(
    doc && doc.sections.length > 0
      ? (doc.sections[Math.min(sectionIndex, doc.sections.length - 1)] ?? null)
      : null
  );

  /**
   * Слова секции с их абсолютными индексами.
   * Нужны, чтобы подсветка знала границы и могла сопоставить позицию.
   */
  const sectionWords = $derived.by(() => {
    if (!doc || !section) return [];
    const out: { word: number; text: string; start: number; end: number }[] = [];
    for (let i = section.firstWord; i < section.endWord && i < doc.size; i++) {
      out.push({
        word: i,
        text: doc.text.slice(doc.wordStart[i]!, doc.wordEnd[i]!),
        start: doc.wordStart[i]! - section.start,
        end: doc.wordEnd[i]! - section.start
      });
    }
    return out;
  });

  /** Текущее слово в координатах секции. */
  const cursorWord = $derived(position);

  /** Индекс текущего слова внутри sectionWords. */
  const cursorIndex = $derived(
    sectionWords.findIndex((w) => w.word >= cursorWord)
  );

  /** Прокручивает так, чтобы текущее слово было видно. */
  function scrollToCursor(force: boolean): void {
    if (!scrollEl) return;

    // Ручной скролл пользователем недавно — не мешаем
    if (!force && Date.now() - lastUserScroll < USER_SCROLL_PAUSE_MS) return;

    const idx = cursorIndex;
    const target = idx >= 0 ? wordEls[idx] : undefined;
    if (!target) return;

    const el = scrollEl;
    const elRect = el.getBoundingClientRect();
    const tRect = target.getBoundingClientRect();

    const targetTop = tRect.top - elRect.top + el.scrollTop;
    const desired = targetTop - el.clientHeight * 0.4;

    if (Math.abs(el.scrollTop - desired) < 4) return;

    el.scrollTo({ top: Math.max(0, desired), behavior: 'smooth' });
  }

  /** Автопрокрутка при смене позиции. */
  $effect(() => {
    // Зависимости: позиция и настройка
    void cursorWord;
    void autoScroll;
    if (!autoScroll) return;

    // Ждём, пока pill отрисуется
    requestAnimationFrame(() => scrollToCursor(false));
  });

  /** Прокрутка при смене секции — принудительно. */
  $effect(() => {
    void sectionIndex;
    // Сбрасываем ссылки: секция перерисована
    wordEls = [];
    requestAnimationFrame(() => scrollToCursor(true));
  });

  function handleUserScroll(): void {
    lastUserScroll = Date.now();
  }

  // --- Долгое нажатие ---

  let pressTimer: ReturnType<typeof setTimeout> | null = null;
  let pressedWord: number | null = null;

  function onPointerDown(e: PointerEvent, word: number): void {
    // Реагируем только на основную кнопку
    if (e.button !== 0) return;
    pressedWord = word;
    pressTimer = setTimeout(() => {
      if (pressedWord !== null && onSeekWord) {
        onSeekWord(pressedWord);
        // Тактильная отдача, если поддерживается
        navigator.vibrate?.(15);
      }
      pressTimer = null;
      pressedWord = null;
    }, 450);
  }

  function cancelPress(): void {
    if (pressTimer !== null) {
      clearTimeout(pressTimer);
      pressTimer = null;
    }
    pressedWord = null;
  }

  /** Двойной клик — тоже перескок (удобно на десктопе). */
  function onDoubleClick(word: number): void {
    onSeekWord?.(word);
  }

  onMount(() => {
    return () => cancelPress();
  });

  onDestroy(() => cancelPress());
</script>

<div
  class="reader"
  bind:this={scrollEl}
  onscroll={handleUserScroll}
  style:--font-size="{fontSp}px"
  style:--line-height={lineSpacing}
  style:--font-family={serif ? 'var(--font-serif)' : 'var(--font-sans)'}
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
          bind:this={wordEls[i]}
          onpointerdown={(e) => onPointerDown(e, w.word)}
          onpointerup={cancelPress}
          onpointerleave={cancelPress}
          onpointercancel={cancelPress}
          ondblclick={() => onDoubleClick(w.word)}
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
    padding: 20px 24px 40vh;
    scroll-behavior: smooth;
    -webkit-overflow-scrolling: touch;
  }

  .paragraph {
    margin: 0 auto;
    max-width: 46em;
    font-family: var(--font-family);
    font-size: var(--font-size);
    line-height: var(--line-height);
    color: var(--text-main);
    /* Перенос по словам, без разрыва внутри слова */
    overflow-wrap: break-word;
    hyphens: auto;
  }

  .word {
    cursor: pointer;
    /* Не выделяем при долгом нажатии — иначе выделяется текст */
    user-select: none;
    -webkit-user-select: none;
    -webkit-tap-highlight-color: transparent;
    transition: color var(--transition), background var(--transition);
    border-radius: 3px;
  }

  /* Уже прочитанное — приглушено */
  .word.read {
    color: var(--read);
  }

  /* Текущее слово — «pill» */
  .word.cursor {
    background: var(--pill-bg);
    color: var(--hl-text);
    padding: 0 2px;
    margin: 0 -2px;
  }

  .placeholder {
    max-width: 46em;
    margin: 40px auto;
    text-align: center;
    color: var(--text-dim);
  }
</style>
