<script lang="ts">
  /**
   * Кнопка микрофона с индикатором уровня. Порт android MicButton.
   * Уровень приходит из распознавателя (0..1) и рисуется кольцом.
   */
  interface Props {
    listening?: boolean;
    /** Уровень сигнала 0..1. */
    level?: number;
    /** Идёт подготовка модели. */
    busy?: boolean;
    /** Прогресс подготовки 0..1, если busy. */
    progress?: number;
    status?: string;
    onclick?: () => void;
  }

  let {
    listening = false,
    level = 0,
    busy = false,
    progress = 0,
    status = '',
    onclick
  }: Props = $props();

  /** Радиус кольца. */
  const R = 22;
  const CIRC = 2 * Math.PI * R;

  const dashOffset = $derived(CIRC * (1 - Math.min(1, Math.max(0, level))));

  /** Прогресс в процентах для отображения. */
  const progressPct = $derived(Math.round(Math.min(1, Math.max(0, progress)) * 100));
</script>

<div class="mic-wrap">
  <div class="status" class:active={listening}>{status}</div>

  <button
    class="mic"
    class:listening
    class:busy
    {onclick}
    aria-label={listening ? 'Пауза' : 'Начать слушать'}
    aria-pressed={listening}
  >
    <svg class="ring" viewBox="0 0 52 52" aria-hidden="true">
      <!-- Фон кольца -->
      <circle cx="26" cy="26" r={R} fill="none" stroke="var(--stroke)" stroke-width="3" />
      <!-- Уровень сигнала -->
      {#if listening}
        <circle
          cx="26"
          cy="26"
          r={R}
          fill="none"
          stroke="var(--good)"
          stroke-width="3"
          stroke-linecap="round"
          stroke-dasharray={CIRC}
          stroke-dashoffset={dashOffset}
          transform="rotate(-90 26 26)"
        />
      {/if}
    </svg>

    <span class="icon" aria-hidden="true">
      {#if busy}
        <svg viewBox="0 0 24 24" width="22" height="22">
          <circle
            cx="12"
            cy="12"
            r="9"
            fill="none"
            stroke="currentColor"
            stroke-width="2.5"
            stroke-linecap="round"
            stroke-dasharray={2 * Math.PI * 9}
            stroke-dashoffset={(2 * Math.PI * 9 * (1 - Math.max(0.05, progress)))}
            transform="rotate(-90 12 12)"
          />
        </svg>
      {:else if listening}
        <!-- Иконка паузы -->
        <svg viewBox="0 0 24 24" width="22" height="22" fill="currentColor">
          <rect x="7" y="5" width="3.5" height="14" rx="1" />
          <rect x="13.5" y="5" width="3.5" height="14" rx="1" />
        </svg>
      {:else}
        <!-- Иконка микрофона -->
        <svg viewBox="0 0 24 24" width="22" height="22" fill="currentColor">
          <path
            d="M12 14a3 3 0 0 0 3-3V6a3 3 0 1 0-6 0v5a3 3 0 0 0 3 3Zm5-3a5 5 0 0 1-4 4.9V19h2.5a1 1 0 1 1 0 2h-7a1 1 0 1 1 0-2H11v-3.1A5 5 0 0 1 7 11a1 1 0 1 1 2 0 3 3 0 0 0 6 0 1 1 0 1 1 2 0Z"
          />
        </svg>
      {/if}
    </span>
  </button>

  {#if busy}
    <div class="progress-label">Подготовка модели… {progressPct}%</div>
  {/if}
</div>

<style>
  .mic-wrap {
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 6px;
  }

  .status {
    font-size: 12px;
    color: var(--text-dim);
    min-height: 16px;
    transition: color var(--transition);
  }

  .status.active {
    color: var(--good);
  }

  .mic {
    position: relative;
    width: 52px;
    height: 52px;
    display: grid;
    place-items: center;
    border-radius: 50%;
    color: var(--text-main);
    transition: transform var(--transition), color var(--transition);
  }

  .mic:hover {
    transform: scale(1.06);
  }

  .mic:active {
    transform: scale(0.96);
  }

  .mic.listening {
    color: var(--good);
  }

  .mic.busy {
    color: var(--warn);
    cursor: progress;
  }

  .ring {
    position: absolute;
    inset: 0;
    width: 100%;
    height: 100%;
  }

  .icon {
    position: relative;
    display: grid;
    place-items: center;
  }

  .progress-label {
    font-size: 11px;
    color: var(--warn);
  }
</style>
