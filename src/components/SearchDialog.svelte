<script lang="ts">
  /**
   * Поиск по тексту. Аналог showSearch() из MainActivity.kt.
   * Использует TextSearch.find() — нечёткий поиск через WordMatcher.
   *
   * Навигация: список найденных мест, «следующее»/«предыдущее»,
   * клик по результату → переход.
   */
  import type { Doc } from '../lib/text/Doc';
  import { TextSearch, type Hit } from '../lib/text/TextSearch';

  interface Props {
    doc: Doc | null;
    onSeek?: (word: number) => void;
    onClose?: () => void;
  }

  let { doc, onSeek, onClose }: Props = $props();

  let query = $state('');
  let hits: Hit[] = $state([]);
  let searched = $state(false);
  let current = $state(0);
  let inputEl: HTMLInputElement | undefined = $state();

  /** Минимум две буквы — как в оригинале (search_prompt). */
  const MIN_QUERY = 2;

  const tooShort = $derived(query.trim().length > 0 && query.trim().length < MIN_QUERY);

  function run(): void {
    if (!doc || query.trim().length < MIN_QUERY) {
      hits = [];
      searched = false;
      return;
    }

    hits = TextSearch.find(doc, query);
    searched = true;
    current = 0;

    if (hits.length > 0) {
      onSeek?.(hits[0]!.word);
    }
  }

  function goto(index: number): void {
    if (hits.length === 0) return;
    // Зацикливаем навигацию
    current = (index + hits.length) % hits.length;
    onSeek?.(hits[current]!.word);
  }

  function onKeyDown(e: KeyboardEvent): void {
    if (e.key === 'Escape') {
      onClose?.();
    } else if (e.key === 'Enter') {
      if (e.shiftKey) goto(current - 1);
      else if (hits.length > 0 && searched) goto(current + 1);
      else run();
    }
  }

  // Фокус на поле при открытии
  $effect(() => {
    inputEl?.focus();
  });
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
    aria-label="Поиск по тексту"
    tabindex="-1"
    onclick={(e) => e.stopPropagation()}
    onkeydown={(e) => e.stopPropagation()}
  >
    <div class="panel-head">
      <span>Поиск по тексту</span>
      <button class="close" onclick={onClose} aria-label="Закрыть">✕</button>
    </div>

    <div class="search-row">
      <input
        bind:this={inputEl}
        bind:value={query}
        class="input"
        type="text"
        placeholder="Слово или фраза"
        onkeydown={(e) => e.key === 'Enter' && run()}
      />
      <button class="btn btn-primary" onclick={run}>Найти</button>
    </div>

    {#if hits.length > 0}
      <div class="nav">
        <button class="btn" onclick={() => goto(current - 1)} aria-label="Предыдущее">←</button>
        <span class="counter">{current + 1} из {hits.length}</span>
        <button class="btn" onclick={() => goto(current + 1)} aria-label="Следующее">→</button>
      </div>
    {/if}

    <div class="panel-body">
      {#if tooShort}
        <div class="empty">Введите хотя бы две буквы</div>
      {:else if !searched}
        <div class="empty">Введите слово или фразу и нажмите «Найти»</div>
      {:else if hits.length === 0}
        <div class="empty">Ничего не найдено</div>
      {:else}
        {#if hits.length >= TextSearch.SEARCH_LIMIT}
          <div class="hint">Показаны первые {TextSearch.SEARCH_LIMIT} совпадений — уточните запрос</div>
        {/if}
        {#each hits as h, i (h.word)}
          <button class="panel-row" class:active={i === current} onclick={() => goto(i)}>
            <span class="chapter">{h.chapter}</span>
            <span class="snippet">{h.snippet}</span>
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
    max-width: 620px;
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

  .search-row {
    display: flex;
    gap: 8px;
    padding: 12px 16px;
  }

  .input {
    flex: 1;
    min-width: 0;
    padding: 9px 12px;
    border: 1px solid var(--stroke);
    border-radius: var(--radius-sm);
    background: var(--bg);
    color: var(--text-main);
    font: inherit;
    outline: none;
  }

  .input:focus {
    border-color: var(--accent);
  }

  .nav {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 12px;
    padding: 0 16px 12px;
  }

  .counter {
    font-size: 13px;
    color: var(--text-subtle);
    min-width: 80px;
    text-align: center;
  }

  .panel-body {
    overflow-y: auto;
    padding: 6px 0;
    border-top: 1px solid var(--stroke);
  }

  .panel-row {
    display: flex;
    flex-direction: column;
    gap: 3px;
    width: 100%;
    text-align: left;
    padding: 10px 16px;
    transition: background var(--transition);
  }

  .panel-row:hover {
    background: var(--bg-elevated);
  }

  .panel-row.active {
    background: var(--bg-elevated);
    box-shadow: inset 3px 0 0 var(--accent);
  }

  .chapter {
    font-size: 11px;
    color: var(--accent);
    text-transform: none;
  }

  .snippet {
    font-size: 13px;
    color: var(--text-main);
    line-height: 1.35;
  }

  .empty,
  .hint {
    padding: 16px;
    text-align: center;
    color: var(--text-subtle);
    font-size: 13px;
  }

  .hint {
    padding: 8px 16px;
    text-align: left;
  }
</style>
