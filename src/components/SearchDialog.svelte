<script lang="ts">
  /**
   * Поиск — полноэкранный режим (mobile-first).
   *
   * Сверху «Отмена», поле с автофокусом, список результатов с номером песни
   * и snippet. Внизу счётчик и кнопки «предыдущий»/«следующий».
   * На пустом экране — иллюстрация и подсказка.
   */
  import type { Doc } from '../lib/text/Doc';
  import { TextSearch, type Hit } from '../lib/text/TextSearch';
  import Image from './Image.svelte';

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

  const MIN_QUERY = 2;

  const tooShort = $derived(query.trim().length > 0 && query.trim().length < MIN_QUERY);

  /** Номер строки для результата: номер стиха по маркерам. */
  function lineLabel(word: number): string {
    const d = doc;
    if (!d) return '';
    // Ищем ближайший маркер «[N]» перед словом
    const offset = d.wordStart[word] ?? 0;
    let best = '';
    for (let i = 0; i + 1 < d.markerRanges.length; i += 2) {
      if (d.markerRanges[i]! <= offset) {
        best = d.text.slice(d.markerRanges[i]!, d.markerRanges[i + 1]!);
      } else {
        break;
      }
    }
    return best;
  }

  function run(): void {
    if (!doc || query.trim().length < MIN_QUERY) {
      hits = [];
      searched = false;
      return;
    }

    hits = TextSearch.find(doc, query);
    searched = true;
    current = 0;

    if (hits.length > 0) onSeek?.(hits[0]!.word);
  }

  function goto(index: number): void {
    if (hits.length === 0) return;
    current = (index + hits.length) % hits.length;
    onSeek?.(hits[current]!.word);
  }

  $effect(() => {
    inputEl?.focus();
  });
</script>

<div class="screen">
  <header class="head">
    <button class="cancel" onclick={onClose}>Отмена</button>

    <div class="field">
      <svg class="field-icon" viewBox="0 0 24 24" width="17" height="17" fill="currentColor">
        <path
          d="M10 2a8 8 0 1 0 4.9 14.3l4.4 4.4 1.4-1.4-4.4-4.4A8 8 0 0 0 10 2Zm0 2a6 6 0 1 1 0 12 6 6 0 0 1 0-12Z"
        />
      </svg>
      <input
        bind:this={inputEl}
        bind:value={query}
        class="input"
        type="search"
        placeholder="Слово или фраза"
        autocomplete="off"
        autocorrect="off"
        autocapitalize="off"
        spellcheck="false"
        oninput={run}
      />
      {#if query}
        <button class="clear" onclick={() => { query = ''; hits = []; searched = false; }} aria-label="Очистить">✕</button>
      {/if}
    </div>
  </header>

  <div class="body">
    {#if !searched && !tooShort}
      <!-- Пустой экран до ввода -->
      <div class="empty">
        <Image name="search-illustration" class="illustration" />
        <p class="empty-text">Введите слово или фразу</p>
        <p class="empty-hint">Поиск прощает окончания: «лодка» найдёт и «лодки»</p>
      </div>
    {:else if tooShort}
      <div class="empty">
        <p class="empty-text">Введите хотя бы две буквы</p>
      </div>
    {:else if hits.length === 0}
      <div class="empty">
        <p class="empty-text">Ничего не найдено</p>
      </div>
    {:else}
      {#if hits.length >= TextSearch.SEARCH_LIMIT}
        <div class="hint">Показаны первые {TextSearch.SEARCH_LIMIT} — уточните запрос</div>
      {/if}

      <ul class="results">
        {#each hits as h, i (h.word)}
          <li>
            <button class="result" class:active={i === current} onclick={() => goto(i)}>
              <div class="result-meta">
                <span class="chapter">{h.chapter}</span>
                {#if lineLabel(h.word)}
                  <span class="line">{lineLabel(h.word)}</span>
                {/if}
              </div>
              <div class="snippet">{h.snippet}</div>
            </button>
          </li>
        {/each}
      </ul>
    {/if}
  </div>

  {#if hits.length > 0}
    <footer class="nav">
      <button class="nav-btn" onclick={() => goto(current - 1)} aria-label="Предыдущий">
        <svg viewBox="0 0 24 24" width="22" height="22" fill="currentColor">
          <path d="M15 5l-7 7 7 7V5Z" />
        </svg>
      </button>

      <span class="counter">{current + 1} из {hits.length}</span>

      <button class="nav-btn" onclick={() => goto(current + 1)} aria-label="Следующий">
        <svg viewBox="0 0 24 24" width="22" height="22" fill="currentColor">
          <path d="M9 5l7 7-7 7V5Z" />
        </svg>
      </button>
    </footer>
  {/if}
</div>

<style>
  .screen {
    position: fixed;
    inset: 0;
    z-index: 60;
    display: flex;
    flex-direction: column;
    background: var(--bg);
    padding-top: env(safe-area-inset-top);
    padding-bottom: env(safe-area-inset-bottom);
    animation: fade-in 250ms ease-out;
  }

  @keyframes fade-in {
    from {
      opacity: 0;
      transform: translateY(-8px);
    }
    to {
      opacity: 1;
      transform: translateY(0);
    }
  }

  /* --- Шапка --- */

  .head {
    display: flex;
    align-items: center;
    gap: 8px;
    padding: 8px 12px;
    padding-left: max(12px, env(safe-area-inset-left));
    padding-right: max(12px, env(safe-area-inset-right));
    border-bottom: 1px solid var(--stroke);
  }

  .cancel {
    min-height: 44px;
    padding: 0 4px;
    color: var(--accent);
    font-size: 16px;
    white-space: nowrap;
    transition: opacity 250ms ease-out;
  }

  .cancel:active {
    opacity: 0.5;
  }

  .field {
    position: relative;
    flex: 1;
    min-width: 0;
    display: flex;
    align-items: center;
  }

  .field-icon {
    position: absolute;
    left: 10px;
    color: var(--text-subtle);
    pointer-events: none;
  }

  .input {
    width: 100%;
    min-height: 40px;
    padding: 8px 32px 8px 32px;
    border: none;
    border-radius: 10px;
    background: var(--bg-elevated);
    color: var(--text-main);
    font-size: 16px; /* 16px — iOS не зумит при фокусе */
    outline: none;
    appearance: none;
    -webkit-appearance: none;
  }

  .input::placeholder {
    color: var(--text-subtle);
  }

  /* Убираем нативный крестик search-поля в WebKit */
  .input::-webkit-search-cancel-button {
    -webkit-appearance: none;
  }

  .clear {
    position: absolute;
    right: 6px;
    width: 28px;
    height: 28px;
    display: grid;
    place-items: center;
    border-radius: 50%;
    background: var(--stroke);
    color: var(--text-subtle);
    font-size: 12px;
  }

  /* --- Результаты --- */

  .body {
    flex: 1;
    overflow-y: auto;
    -webkit-overflow-scrolling: touch;
    contain: layout style paint;
  }

  .results {
    list-style: none;
    margin: 0;
    padding: 6px 8px 16px;
  }

  .result {
    display: block;
    width: 100%;
    text-align: left;
    padding: 11px 12px;
    border-radius: 12px;
    transition: background 250ms ease-out;
  }

  .result:active {
    background: var(--bg-elevated);
  }

  .result.active {
    background: var(--bg-elevated);
    box-shadow: inset 3px 0 0 var(--accent);
  }

  .result-meta {
    display: flex;
    align-items: center;
    gap: 6px;
    margin-bottom: 3px;
  }

  .chapter {
    font-size: 12px;
    font-weight: 600;
    color: var(--accent);
  }

  .line {
    font-size: 12px;
    color: var(--text-subtle);
  }

  .snippet {
    font-size: 14px;
    line-height: 1.45;
    color: var(--text-main);
  }

  /* --- Пустые состояния --- */

  .empty {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    gap: 12px;
    padding: 48px 32px;
    text-align: center;
  }

  .empty :global(.illustration) {
    width: min(200px, 55vw);
    height: auto;
    opacity: 0.9;
    border-radius: 16px;
  }

  .empty-text {
    margin: 0;
    font-size: 16px;
    color: var(--text-main);
  }

  .empty-hint {
    margin: 0;
    font-size: 13px;
    color: var(--text-subtle);
    max-width: 280px;
  }

  .hint {
    padding: 10px 16px;
    font-size: 13px;
    color: var(--text-subtle);
  }

  /* --- Навигация --- */

  .nav {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 8px 16px;
    padding-bottom: max(8px, env(safe-area-inset-bottom));
    border-top: 1px solid var(--stroke);
    background: var(--bg-panel);
  }

  .nav-btn {
    width: 48px;
    height: 48px;
    display: grid;
    place-items: center;
    border-radius: 12px;
    background: var(--bg-elevated);
    color: var(--text-main);
    transition: transform 250ms ease-out;
  }

  .nav-btn:active {
    transform: scale(0.92);
  }

  .counter {
    font-size: 14px;
    color: var(--text-subtle);
  }
</style>
