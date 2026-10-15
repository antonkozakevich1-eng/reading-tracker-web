<script lang="ts">
  /**
   * Отладочная панель распознавания — для smoke-теста этапа 5.
   * На этапе 6 будет заменена связкой SpeechEngine → TextTracker → Reader.
   */
  import { onDestroy } from 'svelte';
  import { SpeechEngine, MODEL_SIZE_MB } from '../lib/speech/SpeechEngine';

  interface Props {
    sensitivity?: number;
    /** Распознанные слова наружу — для трекера. */
    onPartial?: (text: string) => void;
    onFinal?: (text: string) => void;
    /** Прослушивание включилось/выключилось. */
    onListening?: (listening: boolean) => void;
  }

  let { sensitivity = 60, onPartial, onFinal, onListening }: Props = $props();

  /** Распознанные фразы для показа. */
  let finals: string[] = $state([]);
  let partial = $state('');
  let listening = $state(false);
  let level = $state(0);
  let preparing = $state(false);
  let progress = $state(0);
  let error = $state<string | null>(null);

  const engine = new SpeechEngine({
    onPartial: (text) => {
      partial = text;
      onPartial?.(text);
    },
    onFinal: (text) => {
      finals = [...finals.slice(-40), text];
      partial = '';
      console.log('[final]', text);
      onFinal?.(text);
    },
    onLevel: (l) => {
      level = l;
    },
    onListeningChanged: (v) => {
      listening = v;
      if (!v) {
        partial = '';
        level = 0;
      }
      onListening?.(v);
    },
    onError: (msg) => {
      error = msg;
      console.error('[speech error]', msg);
    },
    onEngineFailure: (msg) => {
      error = msg;
      listening = false;
      console.error('[engine failure]', msg);
    }
  });

  // Чувствительность приходит из настроек
  $effect(() => {
    engine.setSensitivity(sensitivity);
  });

  async function toggle(): Promise<void> {
    error = null;

    if (engine.isRunning) {
      engine.stop();
      return;
    }

    // Модели ещё нет — показываем прогресс
    if (!engine.isModelReady) {
      preparing = true;
      progress = 0;
    }

    const timer = setInterval(() => {
      progress = engine.modelProgress;
      if (!engine.isModelLoading) {
        clearInterval(timer);
        preparing = false;
      }
    }, 200);

    try {
      await engine.start();
    } catch (e) {
      error = e instanceof Error ? e.message : 'Не удалось запустить распознавание';
      preparing = false;
      clearInterval(timer);
    }
  }

  onDestroy(() => engine.release());
</script>

<section class="probe">
  <header class="head">
    <span class="title">Распознавание (отладка)</span>
    <button class="btn" class:active={listening} onclick={toggle} disabled={preparing}>
      {#if preparing}
        Подготовка {Math.round(progress * 100)}%
      {:else if listening}
        Стоп
      {:else}
        Начать
      {/if}
    </button>
  </header>

  {#if preparing}
    <div class="hint">Загрузка модели (~{MODEL_SIZE_MB} МБ, один раз)… {Math.round(progress * 100)}%</div>
  {/if}

  {#if error}
    <div class="err">{error}</div>
  {/if}

  {#if listening}
    <div class="meter">
      <div class="bar" style:width="{Math.min(100, level * 100)}%"></div>
    </div>
  {/if}

  {#if partial}
    <div class="partial">…{partial}</div>
  {/if}

  {#if finals.length > 0}
    <ol class="finals">
      {#each finals as f, i (i)}
        <li>{f}</li>
      {/each}
    </ol>
  {/if}
</section>

<style>
  .probe {
    border-top: 1px solid var(--stroke);
    background: var(--bg-panel);
    padding: 10px 16px;
    max-height: 180px;
    overflow-y: auto;
    font-size: 13px;
  }

  .head {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 12px;
  }

  .title {
    color: var(--text-dim);
  }

  .btn {
    padding: 5px 12px;
    border: 1px solid var(--stroke);
    border-radius: var(--radius-sm);
    background: var(--bg-elevated);
  }

  .btn.active {
    border-color: var(--good);
    color: var(--good);
  }

  .btn:disabled {
    opacity: 0.6;
    cursor: progress;
  }

  .hint {
    margin-top: 6px;
    color: var(--warn);
  }

  .err {
    margin-top: 6px;
    color: var(--bad);
  }

  .meter {
    margin-top: 8px;
    height: 4px;
    background: var(--bg-elevated);
    border-radius: 2px;
    overflow: hidden;
  }

  .bar {
    height: 100%;
    background: var(--good);
    transition: width 80ms linear;
  }

  .partial {
    margin-top: 6px;
    color: var(--text-dim);
    font-style: italic;
  }

  .finals {
    margin: 8px 0 0;
    padding-left: 20px;
    color: var(--text-main);
  }

  .finals li {
    margin-bottom: 2px;
  }
</style>
