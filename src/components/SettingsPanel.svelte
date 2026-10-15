<script lang="ts">
  /**
   * Панель настроек. Аналог Dialogs.showSettings() из оригинала.
   *
   * Все значения применяются мгновенно: store → атрибуты на <html> и
   * CSS-переменные в Reader. Диапазоны совпадают с Settings.kt.
   */
  import {
    MAX_FONT,
    MIN_FONT,
    MAX_LINE_SPACING,
    MIN_LINE_SPACING,
    MAX_SENSITIVITY,
    MIN_SENSITIVITY,
    THEME_SYSTEM,
    THEME_LIGHT,
    THEME_SEPIA,
    THEME_DARK,
    THEME_BLACK,
    ENGINE_NEURAL,
    ENGINE_VOSK
  } from '../lib/settings';
  import { settings, updateSettings, resetSettings } from '../stores/settings';

  interface Props {
    onClose?: () => void;
    /** Сброс статистики (обрабатывается снаружи). */
    onResetStats?: () => void;
    /** Возврат к встроенной «Одиссее». */
    onRestoreBuiltin?: () => void;
  }

  let { onClose, onResetStats, onRestoreBuiltin }: Props = $props();

  const s = $derived($settings);

  const THEMES = [
    { id: THEME_SYSTEM, label: 'Система' },
    { id: THEME_LIGHT, label: 'Бумага' },
    { id: THEME_SEPIA, label: 'Сепия' },
    { id: THEME_DARK, label: 'Тёмная' },
    { id: THEME_BLACK, label: 'Чёрная' }
  ];

  /** Межстрочный интервал с шагом 0.05. */
  function onLineSpacing(e: Event): void {
    const v = Number((e.target as HTMLInputElement).value);
    updateSettings({ lineSpacing: Math.round(v * 20) / 20 });
  }

  function onFont(e: Event): void {
    updateSettings({ fontSp: Number((e.target as HTMLInputElement).value) });
  }

  function onSensitivity(e: Event): void {
    updateSettings({ sensitivity: Number((e.target as HTMLInputElement).value) });
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
    aria-label="Настройки"
    tabindex="-1"
    onclick={(e) => e.stopPropagation()}
    onkeydown={(e) => e.stopPropagation()}
  >
    <div class="panel-head">
      <span>Настройки</span>
      <button class="close" onclick={onClose} aria-label="Закрыть">✕</button>
    </div>

    <div class="panel-body">
      <!-- Оформление -->
      <div class="section-title">Оформление</div>

      <div class="row">
        <div class="label">Тема</div>
        <div class="themes">
          {#each THEMES as t (t.id)}
            <button
              class="theme-btn"
              class:active={s.theme === t.id}
              onclick={() => updateSettings({ theme: t.id })}
            >
              {t.label}
            </button>
          {/each}
        </div>
      </div>

      <div class="row">
        <div class="label">
          Размер шрифта: <span class="value">{s.fontSp.toFixed(0)}</span>
        </div>
        <input
          class="range"
          type="range"
          min={MIN_FONT}
          max={MAX_FONT}
          step="1"
          value={s.fontSp}
          oninput={onFont}
        />
      </div>

      <div class="row">
        <div class="label">
          Межстрочный интервал: <span class="value">{s.lineSpacing.toFixed(2)}</span>
        </div>
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

      <label class="check">
        <input
          type="checkbox"
          checked={s.serif}
          onchange={(e) => updateSettings({ serif: (e.target as HTMLInputElement).checked })}
        />
        <span>Шрифт с засечками</span>
      </label>

      <label class="check">
        <input
          type="checkbox"
          checked={s.autoScroll}
          onchange={(e) => updateSettings({ autoScroll: (e.target as HTMLInputElement).checked })}
        />
        <span>Прокручивать текст за подсветкой</span>
      </label>

      <!-- Распознавание -->
      <div class="section-title">Распознавание</div>

      <div class="row">
        <div class="label">Движок</div>
        <select
          class="select"
          value={s.engine}
          onchange={(e) => updateSettings({ engine: Number((e.target as HTMLSelectElement).value) })}
        >
          <option value={ENGINE_NEURAL}>Нейросеть (рекомендуется)</option>
          <option value={ENGINE_VOSK}>Vosk (классический, запасной)</option>
        </select>
      </div>

      <div class="row">
        <div class="label">
          Чувствительность микрофона: <span class="value">{s.sensitivity}</span>
        </div>
        <input
          class="range"
          type="range"
          min={MIN_SENSITIVITY}
          max={MAX_SENSITIVITY}
          step="1"
          value={s.sensitivity}
          oninput={onSensitivity}
        />
        <div class="hint">Выше — лучше слышит тихую речь, но усиливает и шум.</div>
      </div>

      <label class="check">
        <input
          type="checkbox"
          checked={s.useContext}
          onchange={(e) => updateSettings({ useContext: (e.target as HTMLInputElement).checked })}
        />
        <span>Подсказывать распознавателю слова из текста</span>
      </label>

      <!-- Прочее -->
      <div class="section-title">Прочее</div>

      <div class="actions">
        <button class="btn" onclick={() => onRestoreBuiltin?.()}>
          Вернуть «Одиссею» (текст по умолчанию)
        </button>
        <button class="btn" onclick={() => onResetStats?.()}>Сбросить статистику</button>
        <button class="btn" onclick={resetSettings}>Сбросить настройки</button>
      </div>
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
    max-height: 85vh;
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
    padding: 0 0 8px;
  }

  .section-title {
    font-size: 12px;
    font-weight: 700;
    letter-spacing: 0.08em;
    text-transform: none;
    color: var(--accent);
    padding: 18px 16px 6px;
  }

  .row {
    padding: 8px 16px;
  }

  .label {
    font-size: 14px;
    color: var(--text-main);
    margin-bottom: 8px;
  }

  .value {
    color: var(--text-subtle);
  }

  .hint {
    font-size: 12px;
    color: var(--text-subtle);
    margin-top: 6px;
  }

  .themes {
    display: flex;
    flex-wrap: wrap;
    gap: 6px;
  }

  .theme-btn {
    padding: 6px 12px;
    border: 1px solid var(--stroke);
    border-radius: var(--radius-sm);
    background: var(--bg-elevated);
    color: var(--text-main);
    font-size: 13px;
    transition: border-color var(--transition), background var(--transition);
  }

  .theme-btn:hover {
    border-color: var(--accent);
  }

  .theme-btn.active {
    border-color: var(--accent);
    background: var(--accent);
    color: var(--on-accent);
  }

  .range {
    width: 100%;
    accent-color: var(--accent);
  }

  .select {
    width: 100%;
    padding: 8px 10px;
    border: 1px solid var(--stroke);
    border-radius: var(--radius-sm);
    background: var(--bg);
    color: var(--text-main);
    font: inherit;
  }

  .check {
    display: flex;
    align-items: center;
    gap: 10px;
    padding: 10px 16px;
    cursor: pointer;
    color: var(--text-main);
  }

  .check input {
    accent-color: var(--accent);
    width: 16px;
    height: 16px;
  }

  .actions {
    display: flex;
    flex-wrap: wrap;
    gap: 8px;
    padding: 8px 16px 4px;
  }
</style>
