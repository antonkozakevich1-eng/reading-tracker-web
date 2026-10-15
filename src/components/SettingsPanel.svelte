<script lang="ts">
  /**
   * Настройки — только редкое (mobile-first).
   *
   * Частое вынесено на главный экран: шрифт (A−/A+), тема, чувствительность.
   * Здесь остаётся: движок, serif, межстрочный интервал, сбросы, файл.
   */
  import {
    MAX_LINE_SPACING,
    MIN_LINE_SPACING,
    ENGINE_NEURAL,
    ENGINE_VOSK
  } from '../lib/settings';
  import { settings, updateSettings, resetSettings } from '../stores/settings';

  interface Props {
    onClose?: () => void;
    onResetStats?: () => void;
    onRestoreBuiltin?: () => void;
    onOpenFile?: () => void;
  }

  let { onClose, onResetStats, onRestoreBuiltin, onOpenFile }: Props = $props();

  const s = $derived($settings);

  function onLineSpacing(e: Event): void {
    const v = Number((e.target as HTMLInputElement).value);
    updateSettings({ lineSpacing: Math.round(v * 20) / 20 });
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
    class="sheet"
    role="dialog"
    aria-label="Настройки"
    tabindex="-1"
    onclick={(e) => e.stopPropagation()}
    onkeydown={(e) => e.stopPropagation()}
  >
    <div class="grabber" aria-hidden="true"></div>

    <header class="head">
      <span class="head-title">Настройки</span>
      <button class="done" onclick={onClose}>Готово</button>
    </header>

    <div class="body">
      <!-- Текст -->
      <section class="group">
        <div class="group-title">Текст</div>

        <label class="row">
          <span class="row-label">Шрифт с засечками</span>
          <input
            class="switch"
            type="checkbox"
            checked={s.serif}
            onchange={(e) => updateSettings({ serif: (e.target as HTMLInputElement).checked })}
          />
        </label>

        <div class="row column">
          <span class="row-label">Межстрочный интервал · {s.lineSpacing.toFixed(2)}</span>
          <input
            class="range"
            type="range"
            min={MIN_LINE_SPACING}
            max={MAX_LINE_SPACING}
            step="0.05"
            value={s.lineSpacing}
            oninput={onLineSpacing}
          />
        </div>
      </section>

      <!-- Распознавание -->
      <section class="group">
        <div class="group-title">Распознавание</div>

        <div class="row column">
          <span class="row-label">Движок</span>
          <select
            class="select"
            value={s.engine}
            onchange={(e) => updateSettings({ engine: Number((e.target as HTMLSelectElement).value) })}
          >
            <option value={ENGINE_NEURAL}>Нейросеть (рекомендуется)</option>
            <option value={ENGINE_VOSK}>Vosk (классический, запасной)</option>
          </select>
        </div>

        <label class="row">
          <span class="row-label">Подсказывать слова из текста</span>
          <input
            class="switch"
            type="checkbox"
            checked={s.useContext}
            onchange={(e) => updateSettings({ useContext: (e.target as HTMLInputElement).checked })}
          />
        </label>

        <label class="row">
          <span class="row-label">Прокручивать за подсветкой</span>
          <input
            class="switch"
            type="checkbox"
            checked={s.autoScroll}
            onchange={(e) => updateSettings({ autoScroll: (e.target as HTMLInputElement).checked })}
          />
        </label>
      </section>

      <!-- Текст и файлы -->
      <section class="group">
        <div class="group-title">Документ</div>

        <button class="row action" onclick={() => { onOpenFile?.(); onClose?.(); }}>
          <span class="row-label">Открыть файл (.txt, .html, .mht)</span>
          <span class="chevron">›</span>
        </button>

        <button class="row action" onclick={() => onRestoreBuiltin?.()}>
          <span class="row-label">Вернуть «Одиссею»</span>
          <span class="chevron">›</span>
        </button>
      </section>

      <!-- Сбросы -->
      <section class="group">
        <button class="row action" onclick={() => onResetStats?.()}>
          <span class="row-label">Сбросить статистику</span>
        </button>

        <button class="row action danger" onclick={resetSettings}>
          <span class="row-label">Сбросить настройки</span>
        </button>
      </section>
    </div>
  </div>
</div>

<style>
  .scrim {
    position: fixed;
    inset: 0;
    background: var(--scrim);
    display: flex;
    align-items: flex-end;
    justify-content: center;
    z-index: 55;
    cursor: default;
  }

  /* Нижний лист — как в iOS */
  .sheet {
    width: 100%;
    max-width: 560px;
    max-height: 88vh;
    display: flex;
    flex-direction: column;
    background: var(--bg-panel);
    border-top-left-radius: 20px;
    border-top-right-radius: 20px;
    padding-bottom: env(safe-area-inset-bottom);
    animation: sheet-up 250ms ease-out;
    overflow: hidden;
  }

  @keyframes sheet-up {
    from {
      transform: translateY(100%);
    }
    to {
      transform: translateY(0);
    }
  }

  .grabber {
    width: 36px;
    height: 5px;
    margin: 8px auto 0;
    border-radius: 3px;
    background: var(--stroke);
    flex-shrink: 0;
  }

  .head {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 10px 16px 12px;
    flex-shrink: 0;
  }

  .head-title {
    font-size: 17px;
    font-weight: 600;
    color: var(--text-main);
  }

  .done {
    min-height: 44px;
    padding: 0 4px;
    color: var(--accent);
    font-size: 16px;
    font-weight: 600;
  }

  .done:active {
    opacity: 0.5;
  }

  .body {
    overflow-y: auto;
    -webkit-overflow-scrolling: touch;
    padding: 0 16px 20px;
  }

  /* --- Группы --- */

  .group {
    margin-bottom: 20px;
  }

  .group-title {
    font-size: 12px;
    font-weight: 700;
    letter-spacing: 0.06em;
    text-transform: uppercase;
    color: var(--text-subtle);
    margin-bottom: 8px;
    padding-left: 4px;
  }

  .row {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 12px;
    width: 100%;
    min-height: 52px;
    padding: 12px 14px;
    margin-bottom: 6px;
    border-radius: 12px;
    background: var(--bg-elevated);
    color: var(--text-main);
    text-align: left;
    transition: transform 250ms ease-out, opacity 250ms ease-out;
  }

  .row.column {
    flex-direction: column;
    align-items: stretch;
    gap: 10px;
  }

  .row.action:active {
    transform: scale(0.985);
    opacity: 0.8;
  }

  .row.danger .row-label {
    color: var(--bad);
  }

  .row-label {
    font-size: 15px;
    line-height: 1.3;
  }

  .chevron {
    color: var(--text-subtle);
    font-size: 20px;
    line-height: 1;
    flex-shrink: 0;
  }

  /* --- Контролы --- */

  .switch {
    width: 50px;
    height: 30px;
    flex-shrink: 0;
    accent-color: var(--accent);
  }

  .range {
    width: 100%;
    accent-color: var(--accent);
  }

  .select {
    width: 100%;
    min-height: 44px;
    padding: 10px 12px;
    border: 1px solid var(--stroke);
    border-radius: 10px;
    background: var(--bg);
    color: var(--text-main);
    font-size: 16px;
    -webkit-appearance: none;
    appearance: none;
  }
</style>
