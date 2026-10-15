<script lang="ts">
  /**
   * Строка статистики. Формат из оригинала:
   *   "%1$d сл · %2$d сл/мин · %3$s"  (stats_format)
   *
   * Обновляется по таймеру, пока идёт прослушивание, — как statsTick
   * в MainActivity (раз в секунду).
   */
  interface Props {
    /** Сколько слов прочитано. */
    wordsRead?: number;
    /** Слов в минуту. */
    wpm?: number;
    /** Активное время в миллисекундах. */
    activeMs?: number;
    /** Идёт ли прослушивание (от этого зависит формат). */
    running?: boolean;
  }

  let { wordsRead = 0, wpm = 0, activeMs = 0, running = false }: Props = $props();

  /** Порт formatTime() из MainActivity.kt. */
  function formatTime(ms: number): string {
    const total = Math.floor(ms / 1000);
    const m = Math.floor(total / 60);
    const s = total % 60;
    return `${m}:${String(s).padStart(2, '0')}`;
  }
</script>

<div class="stats" class:running>
  <span class="item"><span class="num">{wordsRead}</span> сл</span>
  <span class="dim">·</span>
  <span class="item"><span class="num">{wpm}</span> сл/мин</span>
  <span class="dim">·</span>
  <span class="item">{formatTime(activeMs)}</span>
</div>

<style>
  .stats {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 6px;
    font-size: 13px;
    color: var(--text-subtle);
    padding: 6px 0;
    transition: color var(--transition);
  }

  .stats.running {
    color: var(--good);
  }

  .item {
    white-space: nowrap;
  }

  .num {
    color: var(--text-main);
    font-weight: 600;
  }

  .stats.running .num {
    color: inherit;
  }

  .dim {
    opacity: 0.5;
  }
</style>
