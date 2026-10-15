<script lang="ts">
  /**
   * Оглавление — выдвижной drawer слева (mobile-first).
   *
   * Открывается кнопкой или свайпом от левого края. Активная песня
   * подсвечена. Сверху — декоративная орнаментальная полоска.
   */
  import type { Doc } from '../lib/text/Doc';
  import Image from './Image.svelte';

  interface Props {
    doc: Doc | null;
    /** Текущая позиция чтения в словах. */
    position: number;
    open?: boolean;
    onSeek?: (word: number) => void;
    onClose?: () => void;
  }

  let { doc, position, open = false, onSeek, onClose }: Props = $props();

  const entries = $derived(doc ? doc.sections.filter((s) => s.inToc) : []);

  /** Порт toc.indexOfLast { it.firstWord <= pos }.coerceAtLeast(0). */
  const currentIndex = $derived.by(() => {
    let found = -1;
    for (let i = 0; i < entries.length; i++) {
      if (entries[i]!.firstWord <= position) found = i;
    }
    return Math.max(found, 0);
  });

  /** Свайп от левого края для открытия. */
  const EDGE = 24;
  const THRESHOLD = 60;

  let startX = 0;
  let startY = 0;
  let dragging = $state(false);
  let dragX = $state(0);

  function onTouchStart(e: TouchEvent): void {
    const t = e.touches[0];
    if (!t) return;

    if (!open && t.clientX <= EDGE) {
      // Начали от края — открываем
      startX = t.clientX;
      startY = t.clientY;
      dragging = true;
      dragX = 0;
    } else if (open) {
      startX = t.clientX;
      startY = t.clientY;
      dragging = true;
      dragX = 0;
    }
  }

  function onTouchMove(e: TouchEvent): void {
    if (!dragging) return;
    const t = e.touches[0];
    if (!t) return;

    const dx = t.clientX - startX;
    const dy = t.clientY - startY;

    // Если движение больше вертикальное — не мешаем прокрутке списка
    if (Math.abs(dy) > Math.abs(dx) && Math.abs(dx) < 20) {
      dragging = false;
      dragX = 0;
      return;
    }

    dragX = open ? Math.max(0, dx) : Math.min(0, dx);
  }

  function onTouchEnd(): void {
    if (!dragging) return;
    dragging = false;

    if (open && dragX > THRESHOLD) {
      onClose?.();
    } else if (!open && dragX < -THRESHOLD) {
      // Свайп влево от края — открываем (родитель управляет open)
      onSeek?.(-1);
    }
    dragX = 0;
  }

  function pick(word: number): void {
    if (word < 0) return;
    onSeek?.(word);
    onClose?.();
  }

  function onKeyDown(e: KeyboardEvent): void {
    if (e.key === 'Escape') onClose?.();
  }

  /** Смещение панели при перетаскивании. */
  const panelOffset = $derived(open ? dragX : 0);
</script>

<svelte:window onkeydown={onKeyDown} />

<!-- Зона захвата свайпа от левого края -->
{#if !open}
  <div
    class="edge-zone"
    role="presentation"
    ontouchstart={onTouchStart}
    ontouchmove={onTouchMove}
    ontouchend={onTouchEnd}
  ></div>
{/if}

{#if open}
  <div
    class="scrim"
    class:dragging
    role="button"
    tabindex="-1"
    onclick={onClose}
    onkeydown={(e) => e.key === 'Enter' && onClose?.()}
  ></div>

  <aside
    class="drawer"
    class:dragging
    style:transform="translateX({panelOffset}px)"
    aria-label="Оглавление"
    ontouchstart={onTouchStart}
    ontouchmove={onTouchMove}
    ontouchend={onTouchEnd}
  >
    <div class="ornament" aria-hidden="true">
      <Image name="toc-ornament" class="ornament-img" />
    </div>

    <div class="drawer-head">
      <span class="drawer-title">Оглавление</span>
      <button class="close" onclick={onClose} aria-label="Закрыть">✕</button>
    </div>

    <nav class="list">
      {#if entries.length === 0}
        <div class="empty">В этом тексте нет оглавления</div>
      {:else}
        {#each entries as s, i (s.start)}
          <button class="row" class:active={i === currentIndex} onclick={() => pick(s.firstWord)}>
            <span class="row-title">{s.title}</span>
            {#if i === currentIndex}
              <span class="dot" aria-hidden="true"></span>
            {/if}
          </button>
        {/each}
      {/if}
    </nav>
  </aside>
{/if}

<style>
  .edge-zone {
    position: fixed;
    left: 0;
    top: 0;
    bottom: 0;
    width: 24px;
    z-index: 40;
    /* Прозрачная, но ловит касания */
    touch-action: pan-y;
  }

  .scrim {
    position: fixed;
    inset: 0;
    background: var(--scrim);
    z-index: 50;
    opacity: 1;
    transition: opacity 250ms ease-out;
  }

  .scrim.dragging {
    transition: none;
  }

  .drawer {
    position: fixed;
    left: 0;
    top: 0;
    bottom: 0;
    width: min(320px, 82vw);
    display: flex;
    flex-direction: column;
    background: var(--bg-panel);
    border-right: 1px solid var(--stroke);
    z-index: 51;
    padding-top: env(safe-area-inset-top);
    padding-bottom: env(safe-area-inset-bottom);
    padding-left: env(safe-area-inset-left);
    box-shadow: 4px 0 24px rgba(0, 0, 0, 0.2);
    animation: slide-in 250ms ease-out;
    will-change: transform;
  }

  .drawer.dragging {
    animation: none;
    transition: none;
  }

  @keyframes slide-in {
    from {
      transform: translateX(-100%);
      opacity: 0.6;
    }
    to {
      transform: translateX(0);
      opacity: 1;
    }
  }

  /* Декоративная полоска: лента меандра, если сгенерирована */
  .ornament {
    height: 18px;
    margin: 10px 16px 6px;
    display: flex;
    align-items: center;
    justify-content: center;
    overflow: hidden;
    border-radius: 3px;
  }

  .ornament :global(.ornament-img) {
    width: 100%;
    height: 100%;
    object-fit: cover;
    object-position: center;
    opacity: 0.9;
  }

  /* Пока картинки нет — аккуратная линия */
  .ornament:not(:has(img)) {
    border-top: 1px solid var(--stroke);
    border-bottom: 1px solid var(--stroke);
  }

  .drawer-head {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 8px 16px 10px;
  }

  .drawer-title {
    font-size: 13px;
    font-weight: 700;
    letter-spacing: 0.06em;
    text-transform: uppercase;
    color: var(--accent);
  }

  .close {
    width: 32px;
    height: 32px;
    display: grid;
    place-items: center;
    border-radius: 8px;
    color: var(--text-subtle);
    font-size: 15px;
  }

  .close:active {
    transform: scale(0.9);
  }

  .list {
    flex: 1;
    overflow-y: auto;
    -webkit-overflow-scrolling: touch;
    padding: 0 8px 16px;
    contain: layout style paint;
  }

  .row {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 8px;
    width: 100%;
    min-height: 46px;
    padding: 10px 12px;
    border-radius: 10px;
    text-align: left;
    color: var(--text-main);
    font-size: 15px;
    transition: background 250ms ease-out;
  }

  .row:active {
    background: var(--bg-elevated);
  }

  .row.active {
    background: var(--bg-elevated);
    font-weight: 600;
    color: var(--accent);
  }

  .row-title {
    min-width: 0;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
  }

  .dot {
    width: 6px;
    height: 6px;
    border-radius: 50%;
    background: var(--accent);
    flex-shrink: 0;
  }

  .empty {
    padding: 24px 16px;
    text-align: center;
    color: var(--text-subtle);
    font-size: 14px;
  }
</style>
