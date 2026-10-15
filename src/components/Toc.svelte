<script lang="ts">
  /**
   * Оглавление. Аналог showToc() из MainActivity.kt:
   * берём секции с inToc, текущая определяется по позиции курсора
   * (indexOfLast { firstWord <= pos }).
   */
  import type { Doc } from '../lib/text/Doc';

  interface Props {
    doc: Doc | null;
    /** Текущая позиция чтения в словах. */
    position: number;
    /** Переход к слову. */
    onSeek?: (word: number) => void;
    onClose?: () => void;
  }

  let { doc, position, onSeek, onClose }: Props = $props();

  /** Секции для оглавления. */
  const entries = $derived(doc ? doc.sections.filter((s) => s.inToc) : []);

  /**
   * Индекс текущей секции в списке оглавления.
   * Порт: toc.indexOfLast { it.firstWord <= pos }.coerceAtLeast(0)
   */
  const currentIndex = $derived.by(() => {
    let found = -1;
    for (let i = 0; i < entries.length; i++) {
      if (entries[i]!.firstWord <= position) found = i;
    }
    return Math.max(found, 0);
  });

  function pick(word: number): void {
    onSeek?.(word);
    onClose?.();
  }

  function onKeyDown(e: KeyboardEvent): void {
    if (e.key === 'Escape') onClose?.();
  }
</script>

<svelte:window onkeydown={onKeyDown} />

<div
  class="scrim"
  role="button"
  tabindex="-1"
  onclick={onClose}
  onkeydown={(e) => e.key === 'Enter' && onClose?.()}
>
  <div
    class="panel"
    role="dialog"
    aria-label="Оглавление"
    tabindex="-1"
    onclick={(e) => e.stopPropagation()}
    onkeydown={(e) => e.stopPropagation()}
  >
    <div class="panel-head">
      <span>Оглавление</span>
      <button class="close" onclick={onClose} aria-label="Закрыть">✕</button>
    </div>

    <div class="panel-body">
      {#if entries.length === 0}
        <div class="empty">В этом тексте нет оглавления</div>
      {:else}
        {#each entries as s, i (s.start)}
          <button
            class="panel-row"
            class:active={i === currentIndex}
            onclick={() => pick(s.firstWord)}
          >
            <span class="title">{s.title}</span>
            <span class="words">{s.endWord - s.firstWord} сл.</span>
          </button>
        {/each}
      {/if}
    </div>
  </div>
</div>

<style>
  .scrim {
    position: fixed;
    inset: 0;
    background: var(--scrim);
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 20px;
    z-index: 50;
    cursor: default;
  }

  .panel {
    background: var(--bg-panel);
    border: 1px solid var(--stroke);
    border-radius: var(--radius);
    width: 100%;
    max-width: 520px;
    max-height: 80vh;
    display: flex;
    flex-direction: column;
    overflow: hidden;
  }

  .panel-head {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 14px 16px;
    border-bottom: 1px solid var(--stroke);
    font-weight: 600;
    color: var(--text-main);
  }

  .close {
    color: var(--text-subtle);
    font-size: 16px;
    line-height: 1;
    padding: 4px;
  }

  .close:hover {
    color: var(--text-main);
  }

  .panel-body {
    overflow-y: auto;
    padding: 6px 0;
  }

  .panel-row {
    display: flex;
    align-items: baseline;
    justify-content: space-between;
    gap: 12px;
    width: 100%;
    text-align: left;
    padding: 10px 16px;
    color: var(--text-main);
    transition: background var(--transition);
  }

  .panel-row:hover {
    background: var(--bg-elevated);
  }

  .panel-row.active {
    background: var(--bg-elevated);
    box-shadow: inset 3px 0 0 var(--accent);
  }

  .title {
    flex: 1;
    min-width: 0;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
  }

  .words {
    flex-shrink: 0;
    font-size: 12px;
    color: var(--text-subtle);
  }

  .empty {
    padding: 20px 16px;
    text-align: center;
    color: var(--text-subtle);
  }
</style>
