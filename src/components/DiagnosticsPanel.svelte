<script lang="ts">
  /**
   * Диагностическая панель: зеркало состояния распознавания.
   *
   * Временный инструмент для разбора проблемы «подсветка не двигается».
   * Ничего не меняет в логике — только показывает, что уже произошло.
   * Включается ?debug=1 в URL или пятью тапами по шапке.
   */
  import { diagStore, clearDiag, diagReport, type DiagEntry } from '../stores/diagnostics';

  let copied = $state(false);
  let copyTimer: ReturnType<typeof setTimeout> | null = null;

  const s = $derived($diagStore);

  async function copyReport(): Promise<void> {
    const text = diagReport();
    try {
      await navigator.clipboard.writeText(text);
    } catch {
      // Safari без HTTPS или без разрешения — запасной путь через textarea
      const ta = document.createElement('textarea');
      ta.value = text;
      ta.style.position = 'fixed';
      ta.style.opacity = '0';
      document.body.appendChild(ta);
      ta.select();
      try {
        document.execCommand('copy');
      } catch {
        // не удалось — пользователь скопирует вручную из панели
      }
      document.body.removeChild(ta);
    }

    copied = true;
    if (copyTimer) clearTimeout(copyTimer);
    copyTimer = setTimeout(() => (copied = false), 2000);
  }

  /** Короткая метка результата трекера. */
  function moveLabel(e: DiagEntry): string {
    if (e.move === null) return 'null';
    return e.far ? 'FAR' : 'move';
  }
</script>

<div class="diag" role="region" aria-label="Диагностика распознавания">
  <header class="head">
    <span class="title">ДИАГНОСТИКА</span>
    <div class="actions">
      <button class="btn" onclick={copyReport}>{copied ? 'Скопировано' : 'Копировать'}</button>
      <button class="btn" onclick={clearDiag}>Очистить</button>
    </div>
  </header>

  <div class="body">
    {#if s.current}
      <div class="row live">
        <span class="k">pos</span><span class="v">{s.current.pos}</span>
        <span class="k">conf</span><span class="v">{s.current.confidence.toFixed(3)}</span>
        <span class="k">unconf</span>
        <span class="v" class:bad={s.current.unconfirmed > 0}>{s.current.unconfirmed}</span>
      </div>
      <div class="row live">
        <span class="k">поиск</span>
        <span class="v" class:bad={s.current.searchMode}>{s.current.searchMode ? 'ДА' : 'нет'}</span>
        <span class="k">песнь</span><span class="v">№{s.current.section + 1}</span>
      </div>
    {/if}

    <div class="speech">
      <span class="k">partial:</span> <span class="v">«{s.lastPartial}»</span>
    </div>
    <div class="speech">
      <span class="k">final:</span> <span class="v">«{s.lastFinal}»</span>
    </div>

    <div class="history">
      {#if s.history.length === 0}
        <div class="empty">Читайте вслух — записи появятся здесь</div>
      {:else}
        {#each s.history as e (e.t + e.text)}
          <div class="entry">
            <div class="meta">
              {e.t}s · pos={e.pos} · <span class:bad={e.move === null}>{moveLabel(e)}</span>
              · conf={e.confidence.toFixed(2)} · {e.searchMode ? 'ПОИСК' : '—'} · unc={e.unconfirmed}
            </div>
            <div class="text">«{e.text}»</div>
          </div>
        {/each}
      {/if}
    </div>
  </div>
</div>

<style>
  .diag {
    /* Не больше 30% высоты экрана */
    max-height: 30vh;
    display: flex;
    flex-direction: column;
    background: color-mix(in srgb, var(--bg-panel) 90%, transparent);
    border-top: 1px solid var(--stroke);
    color: var(--text-main);
    font-family: ui-monospace, SFMono-Regular, Menlo, Consolas, monospace;
    font-size: 11px;
    line-height: 1.35;
    /* Панель не должна перехватывать жесты чтения */
    contain: layout style;
  }

  .head {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 8px;
    padding: 5px 10px;
    border-bottom: 1px solid var(--stroke);
    flex-shrink: 0;
  }

  .title {
    font-size: 10px;
    font-weight: 700;
    letter-spacing: 0.08em;
    color: var(--accent);
  }

  .actions {
    display: flex;
    gap: 6px;
  }

  .btn {
    min-height: 26px;
    padding: 3px 9px;
    border: 1px solid var(--stroke);
    border-radius: 6px;
    background: var(--bg-elevated);
    color: var(--text-main);
    font-size: 10px;
    font-family: inherit;
  }

  .btn:active {
    opacity: 0.6;
  }

  .body {
    overflow-y: auto;
    -webkit-overflow-scrolling: touch;
    padding: 6px 10px 8px;
  }

  .row {
    display: flex;
    gap: 6px;
    align-items: baseline;
    flex-wrap: wrap;
    margin-bottom: 3px;
  }

  .k {
    color: var(--text-subtle);
  }

  .v {
    color: var(--text-main);
  }

  .v.bad {
    color: var(--bad);
    font-weight: 700;
  }

  .speech {
    margin-top: 4px;
    word-break: break-word;
  }

  .history {
    margin-top: 6px;
    padding-top: 6px;
    border-top: 1px dashed var(--stroke);
  }

  .entry {
    margin-bottom: 5px;
    padding-bottom: 5px;
    border-bottom: 1px solid color-mix(in srgb, var(--stroke) 50%, transparent);
  }

  .entry:last-child {
    border-bottom: none;
    margin-bottom: 0;
  }

  .meta {
    color: var(--text-subtle);
    font-size: 10px;
  }

  .meta .bad {
    color: var(--bad);
    font-weight: 700;
  }

  .text {
    color: var(--text-main);
    word-break: break-word;
  }

  .empty {
    color: var(--text-subtle);
    text-align: center;
    padding: 8px 0;
  }
</style>
