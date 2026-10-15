<script lang="ts">
  /**
   * Нижняя панель (mobile-first, iPhone).
   *
   * Слева: A− / A+. Центр: большая круглая кнопка микрофона (72×72)
   * с пульсацией при записи. Справа: переключатель темы и чувствительность.
   * Снизу — мини-индикатор статистики.
   */
  import { get } from 'svelte/store';
  import { MIN_FONT, MAX_FONT, THEME_LABELS, nextTheme } from '../lib/settings';
  import { settings, updateSettings } from '../stores/settings';
  import Image from './Image.svelte';

  interface Props {
    listening?: boolean;
    level?: number;
    busy?: boolean;
    progress?: number;
    wordsRead?: number;
    wpm?: number;
    onToggleMic?: () => void;
  }

  let {
    listening = false,
    level = 0,
    busy = false,
    progress = 0,
    wordsRead = 0,
    wpm = 0,
    onToggleMic
  }: Props = $props();

  const s = $derived($settings);

  /** Поповер чувствительности. */
  let showSens = $state(false);

  /** Длительное нажатие на A−/A+ меняет шрифт плавно. */
  let holdTimeout: ReturnType<typeof setTimeout> | null = null;
  let holdInterval: ReturnType<typeof setInterval> | null = null;

  function changeFont(delta: number): void {
    // Читаем актуальное значение прямо из store: `s` — это $derived,
    // и в замыкании обработчика оно может быть устаревшим
    const cur = get(settings).fontSp;
    updateSettings({ fontSp: cur + delta });
  }

  function startHold(delta: number): void {
    stopHold();
    // Небольшая задержка перед автоповтором, как в нативных степперах
    const startDelay = setTimeout(() => {
      holdInterval = setInterval(() => {
        const cur = get(settings).fontSp;
        if (delta > 0 && cur >= MAX_FONT) return stopHold();
        if (delta < 0 && cur <= MIN_FONT) return stopHold();
        updateSettings({ fontSp: cur + delta });
      }, 80);
    }, 400);

    holdTimeout = startDelay;
  }

  function stopHold(): void {
    if (holdTimeout !== null) {
      clearTimeout(holdTimeout);
      holdTimeout = null;
    }
    if (holdInterval !== null) {
      clearInterval(holdInterval);
      holdInterval = null;
    }
  }

  function cycleTheme(): void {
    updateSettings({ theme: nextTheme(get(settings).theme) });
  }

  /** При записи кольцо показывает уровень сигнала. */
  const R = 30;
  const CIRC = 2 * Math.PI * R;
  const dashOffset = $derived(CIRC * (1 - Math.min(1, Math.max(0, level))));
  const progressPct = $derived(Math.round(Math.min(1, Math.max(0, progress)) * 100));

  /** Иконка темы: солнце для светлых, луна для тёмных. */
  const darkTheme = $derived(s.theme === 3 || s.theme === 4);
  /** Клик вне поповера закрывает его. */
  function onWindowClick(e: MouseEvent): void {
    if (!showSens) return;
    const t = e.target as HTMLElement | null;
    if (t && (t.closest('.sens-popover') || t.closest('.sens-btn'))) return;
    showSens = false;
  }
</script>

<svelte:window onclick={onWindowClick} />

<footer class="bar">
  <!-- A− -->
  <button
    class="side-btn"
    onclick={() => changeFont(-1)}
    onpointerdown={() => startHold(-1)}
    onpointerup={stopHold}
    onpointerleave={stopHold}
    onpointercancel={stopHold}
    disabled={s.fontSp <= MIN_FONT}
    aria-label="Уменьшить шрифт"
  >
    <span class="font-a small">A</span>
  </button>

  <!-- Микрофон -->
  <div class="mic-wrap">
    {#if listening}
      <!-- Сгенерированная иллюстрация волн — вращается медленно -->
      <Image name="mic-listening" class="waves" />
      <span class="pulse" aria-hidden="true"></span>
    {/if}

    <button
      class="mic"
      class:listening
      class:busy
      onclick={onToggleMic}
      aria-label={listening ? 'Пауза' : 'Начать слушать'}
      aria-pressed={listening}
    >
      <svg class="ring" viewBox="0 0 72 72" aria-hidden="true">
        <circle cx="36" cy="36" r={R} fill="none" stroke="var(--stroke)" stroke-width="2.5" />
        {#if listening}
          <circle
            cx="36"
            cy="36"
            r={R}
            fill="none"
            stroke="var(--good)"
            stroke-width="2.5"
            stroke-linecap="round"
            stroke-dasharray={CIRC}
            stroke-dashoffset={dashOffset}
            transform="rotate(-90 36 36)"
          />
        {/if}
      </svg>

      <span class="mic-icon" aria-hidden="true">
        {#if busy}
          <svg viewBox="0 0 24 24" width="26" height="26">
            <circle
              cx="12"
              cy="12"
              r="9"
              fill="none"
              stroke="currentColor"
              stroke-width="2.5"
              stroke-linecap="round"
              stroke-dasharray={2 * Math.PI * 9}
              stroke-dashoffset={2 * Math.PI * 9 * (1 - Math.max(0.05, progress))}
              transform="rotate(-90 12 12)"
            />
          </svg>
        {:else if listening}
          <svg viewBox="0 0 24 24" width="26" height="26" fill="currentColor">
            <rect x="7" y="5" width="3.5" height="14" rx="1.2" />
            <rect x="13.5" y="5" width="3.5" height="14" rx="1.2" />
          </svg>
        {:else}
          <svg viewBox="0 0 24 24" width="26" height="26" fill="currentColor">
            <path
              d="M12 14a3 3 0 0 0 3-3V6a3 3 0 1 0-6 0v5a3 3 0 0 0 3 3Zm5-3a5 5 0 0 1-4 4.9V19h2.5a1 1 0 1 1 0 2h-7a1 1 0 1 1 0-2H11v-3.1A5 5 0 0 1 7 11a1 1 0 1 1 2 0 3 3 0 0 0 6 0 1 1 0 1 1 2 0Z"
            />
          </svg>
        {/if}
      </span>
    </button>

    {#if busy}
      <span class="busy-label">{progressPct}%</span>
    {/if}
  </div>

  <!-- A+ -->
  <button
    class="side-btn"
    onclick={() => changeFont(1)}
    onpointerdown={() => startHold(1)}
    onpointerup={stopHold}
    onpointerleave={stopHold}
    onpointercancel={stopHold}
    disabled={s.fontSp >= MAX_FONT}
    aria-label="Увеличить шрифт"
  >
    <span class="font-a big">A</span>
  </button>

  <!-- Тема и чувствительность: второй ряд -->
  <div class="sub-row">
    <button class="chip" onclick={cycleTheme} aria-label="Следующая тема">
      {#if darkTheme}
        <svg viewBox="0 0 24 24" width="15" height="15" fill="currentColor">
          <path d="M12 3a9 9 0 1 0 9 9 7 7 0 0 1-9-9Z" />
        </svg>
      {:else}
        <svg viewBox="0 0 24 24" width="15" height="15" fill="currentColor">
          <path
            d="M12 7a5 5 0 1 0 0 10 5 5 0 0 0 0-10Zm0-5h.01M12 2v2m0 16v2M2 12h2m16 0h2M4.9 4.9l1.4 1.4m11.4 11.4 1.4 1.4M19.1 4.9l-1.4 1.4M6.3 17.7l-1.4 1.4"
            stroke="currentColor"
            stroke-width="2"
            stroke-linecap="round"
            fill="none"
          />
        </svg>
      {/if}
      <span class="chip-label">{THEME_LABELS[s.theme] ?? ''}</span>
    </button>

    <button
      class="chip sens-btn"
      class:open={showSens}
      onclick={() => (showSens = !showSens)}
      aria-label="Чувствительность микрофона"
    >
      <svg viewBox="0 0 24 24" width="15" height="15" fill="currentColor">
        <path
          d="M12 14a3 3 0 0 0 3-3V6a3 3 0 1 0-6 0v5a3 3 0 0 0 3 3Zm5-3a5 5 0 0 1-4 4.9V19h2.5a1 1 0 1 1 0 2h-7a1 1 0 1 1 0-2H11v-3.1A5 5 0 0 1 7 11a1 1 0 1 1 2 0 3 3 0 0 0 6 0 1 1 0 1 1 2 0Z"
        />
      </svg>
      <span class="chip-label">{s.sensitivity}</span>
    </button>

    {#if wordsRead > 0}
      <span class="stat-chip" aria-label="Статистика чтения">
        {wordsRead} сл{#if wpm > 0} · {wpm}/мин{/if}
      </span>
    {/if}
  </div>

  {#if showSens}
    <div class="sens-popover">
      <div class="popover-label">Чувствительность: {s.sensitivity}</div>
      <input
        class="range"
        type="range"
        min="0"
        max="100"
        step="1"
        value={s.sensitivity}
        oninput={(e) => updateSettings({ sensitivity: Number((e.target as HTMLInputElement).value) })}
      />
    </div>
  {/if}
</footer>

<style>
  .bar {
    position: relative;
    display: grid;
    grid-template-columns: 1fr auto 1fr;
    align-items: center;
    gap: 8px;
    padding: 8px 16px 6px;
    padding-bottom: max(6px, env(safe-area-inset-bottom));
    background: var(--bg-panel);
    border-top: 1px solid var(--stroke);
    /* Отдельный слой, чтобы не перерисовывать текст книги */
    contain: layout style;
  }

  .side-btn {
    width: 48px;
    height: 48px;
    min-width: 44px;
    min-height: 44px;
    display: grid;
    place-items: center;
    justify-self: center;
    border-radius: 12px;
    background: var(--bg-elevated);
    color: var(--text-main);
    transition: transform 250ms ease-out, opacity 250ms ease-out;
  }

  .side-btn:active:not(:disabled) {
    transform: scale(0.92);
  }

  .side-btn:disabled {
    opacity: 0.35;
  }

  .font-a {
    font-family: var(--font-serif);
    font-weight: 600;
    line-height: 1;
  }

  .font-a.small {
    font-size: 15px;
  }

  .font-a.big {
    font-size: 23px;
  }

  /* --- Микрофон --- */

  .mic-wrap {
    position: relative;
    display: grid;
    place-items: center;
  }

  .mic {
    position: relative;
    width: 72px;
    height: 72px;
    display: grid;
    place-items: center;
    border-radius: 50%;
    color: var(--text-main);
    transition: transform 250ms ease-out, color 250ms ease-out;
  }

  .mic:active {
    transform: scale(0.94);
  }

  .mic.listening {
    color: var(--good);
  }

  .mic.busy {
    color: var(--warn);
  }

  .ring {
    position: absolute;
    inset: 0;
    width: 100%;
    height: 100%;
  }

  .mic-icon {
    position: relative;
    display: grid;
    place-items: center;
  }

  /* Пульсация при записи — только transform/opacity */
  .pulse {
    position: absolute;
    width: 72px;
    height: 72px;
    border-radius: 50%;
    background: var(--good);
    opacity: 0.18;
    animation: pulse 2s ease-out infinite;
    pointer-events: none;
  }

  /* Иллюстрация волн вокруг микрофона во время записи */
  .mic-wrap :global(.waves) {
    position: absolute;
    width: 132px;
    height: 132px;
    object-fit: contain;
    opacity: 0.35;
    mix-blend-mode: screen;
    pointer-events: none;
    animation: waves-spin 12s linear infinite;
  }

  @keyframes waves-spin {
    from {
      transform: rotate(0deg);
    }
    to {
      transform: rotate(360deg);
    }
  }

  /* На светлых темах screen-блендинг даст белое пятно — используем multiply */
  :global(html[data-theme='light']) .mic-wrap :global(.waves),
  :global(html[data-theme='sepia']) .mic-wrap :global(.waves),
  :global(html[data-theme='system']) .mic-wrap :global(.waves) {
    mix-blend-mode: multiply;
    opacity: 0.22;
  }

  @keyframes pulse {
    0% {
      transform: scale(1);
      opacity: 0.22;
    }
    70% {
      transform: scale(1.35);
      opacity: 0;
    }
    100% {
      transform: scale(1.35);
      opacity: 0;
    }
  }

  .busy-label {
    position: absolute;
    bottom: -14px;
    font-size: 11px;
    color: var(--warn);
  }

  /* --- Второй ряд --- */

  .sub-row {
    grid-column: 1 / -1;
    display: flex;
    justify-content: center;
    gap: 8px;
    margin-top: 4px;
  }

  .chip {
    display: inline-flex;
    align-items: center;
    gap: 6px;
    padding: 0 14px;
    /* Apple HIG: минимум 44px по высоте для тач-цели */
    min-height: 44px;
    border-radius: 10px;
    background: var(--bg-elevated);
    color: var(--text-subtle);
    font-size: 13px;
    transition: color 250ms ease-out, transform 250ms ease-out;
  }

  .chip:active {
    transform: scale(0.96);
  }

  .chip.open {
    color: var(--accent);
  }

  .chip-label {
    white-space: nowrap;
  }

  .stat-chip {
    display: inline-flex;
    align-items: center;
    padding: 0 12px;
    min-height: 44px;
    border-radius: 10px;
    color: var(--text-subtle);
    font-size: 12px;
    white-space: nowrap;
  }

  /* --- Поповер чувствительности --- */

  .sens-popover {
    position: absolute;
    bottom: calc(100% + 8px);
    left: 50%;
    transform: translateX(-50%);
    width: min(280px, calc(100vw - 32px));
    padding: 12px 14px;
    background: var(--bg-panel);
    border: 1px solid var(--stroke);
    border-radius: 14px;
    box-shadow: 0 8px 24px rgba(0, 0, 0, 0.18);
    z-index: 20;
  }

  .popover-label {
    font-size: 13px;
    color: var(--text-subtle);
    margin-bottom: 8px;
    text-align: center;
  }

  .range {
    width: 100%;
    accent-color: var(--accent);
  }
</style>
