<script lang="ts">
  /**
   * Корневой компонент — mobile-first, iPhone.
   *
   * Раскладка: компактная шапка, область чтения, нижняя панель с крупными
   * кнопками. Всё, что часто нужно при чтении (шрифт, тема, чувствительность),
   * доступно прямо на главном экране.
   *
   * Логика распознавания, поиска и трекера не менялась.
   */
  import '../src/styles/global.css';
  import Reader from './components/Reader.svelte';
  import AppHeader from './components/AppHeader.svelte';
  import BottomBar from './components/BottomBar.svelte';
  import Toc from './components/Toc.svelte';
  import SearchDialog from './components/SearchDialog.svelte';
  import SettingsPanel from './components/SettingsPanel.svelte';
  import Image from './components/Image.svelte';
  import DiagnosticsPanel from './components/DiagnosticsPanel.svelte';
  import { SpeechEngine, MODEL_SIZE_MB } from './lib/speech/SpeechEngine';
  import {
    documentStore,
    loadBuiltin,
    setDocument,
    persistCustomText,
    loadCustomText,
    savePositionThrottled,
    flushPosition
  } from './stores/document';
  import { trackerStore } from './stores/tracker';
  import { settings, updateSettings } from './stores/settings';
  import { loadFile } from './lib/io/TextLoader';
  import { MainController, type EngineKind } from './lib/MainController';
  import { DOC_ASSET, ENGINE_VOSK } from './lib/settings';
  import {
    diagStore,
    setDiagEnabled,
    recordSpeech,
    recordTracker
  } from './stores/diagnostics';

  let fileInput: HTMLInputElement | undefined = $state();

  let sectionIndex = $state(0);
  let forceScrollToken = $state(0);
  let heard = $state('');
  let toast = $state('');
  let toastTimer: ReturnType<typeof setTimeout> | null = null;

  let showToc = $state(false);
  let showSearch = $state(false);
  let showSettings = $state(false);

  // Состояние распознавания
  let listening = $state(false);
  let level = $state(0);
  let busy = $state(false);
  let progress = $state(0);

  // Статистика
  let wordsRead = $state(0);
  let wpm = $state(0);

  // --- Подсказка «потерял место» ---
  // Показывается не сразу и не поверх текста: тонкой полоской под шапкой.
  const SEARCH_HINT_DELAY_MS = 3000;
  const SEARCH_HINT_HIDE_MS = 5000;

  /** Видна ли сейчас подсказка. */
  let searchHintVisible = $state(false);
  /** Пользователь закрыл её вручную — до следующего срабатывания не показываем. */
  let searchHintDismissed = $state(false);
  let searchHintTimer: ReturnType<typeof setTimeout> | null = null;

  const view = $derived($documentStore);
  const trackerState = $derived($trackerStore);
  const s = $derived($settings);
  const diag = $derived($diagStore);

  // --- Диагностика: включение флагом ?debug=1 или пятью тапами по шапке ---
  const DEBUG_TAPS = 5;
  const TAP_WINDOW_MS = 2000;
  let tapCount = 0;
  let lastTapAt = 0;

  /**
   * Тап по названию песни в шапке.
   *
   * Первые четыре тапа подряд ничего не открывают — иначе drawer
   * перекрывал бы следующие тапы. На пятом включается диагностика.
   * Открытие оглавления с центра убрано: для этого есть кнопка слева,
   * а серия тапов иначе невозможна.
   */
  function onTitleTap(): void {
    const now = Date.now();
    if (now - lastTapAt > TAP_WINDOW_MS) tapCount = 0;
    lastTapAt = now;
    tapCount++;

    if (tapCount >= DEBUG_TAPS) {
      tapCount = 0;
      setDiagEnabled(!diag.enabled);
    }
  }

  // Флаг в URL включает панель сразу
  $effect(() => {
    const params = new URLSearchParams(window.location.search);
    if (params.get('debug') === '1') setDiagEnabled(true);
  });

  /**
   * Фиксирует результат обработки речи для диагностики.
   * Вызывается ПОСЛЕ controller.onSpeech*, поэтому видит итоговое состояние.
   * Ничего не меняет — только читает.
   */
  function trackDiag(kind: 'final' | 'partial', text: string, posBefore: number): void {
    const t = controller.getTracker();
    if (!t) return;

    const st = controller.getState();
    const moved = t.position !== posBefore;

    recordTracker(kind, text, {
      pos: t.position,
      // move === null означает: трекер не принял решение о сдвиге
      move: moved,
      far: moved ? Math.abs(t.position - posBefore) > 40 : null,
      confidence: t.confidence,
      searchMode: t.searchMode,
      unconfirmed: st.unconfirmedCount,
      section: st.sectionIndex
    });
  }

  const controller = new MainController({
    onCursorRendered: (force) => {
      const st = controller.getState();
      sectionIndex = st.sectionIndex;
      if (force) forceScrollToken++;
      savePositionThrottled(view.key, st.position);
    },
    onToast: (message) => {
      toast = message;
      if (toastTimer) clearTimeout(toastTimer);
      toastTimer = setTimeout(() => {
        toast = '';
      }, 2000);
    },
    onHeardChanged: (tail) => {
      heard = tail;
    }
  });

  /** Движок распознавания — тот же, что был в SpeechProbe. */
  const engine = new SpeechEngine({
    onPartial: (text) => {
      const before = controller.getTracker()?.position ?? 0;
      recordSpeech('partial', text);
      controller.onSpeechPartial(text);
      if (diag.enabled) trackDiag('partial', text, before);
    },
    onFinal: (text) => {
      const before = controller.getTracker()?.position ?? 0;
      recordSpeech('final', text);
      controller.onSpeechFinal(text);
      if (diag.enabled) trackDiag('final', text, before);
    },
    onLevel: (l) => {
      level = l;
    },
    onListeningChanged: (v) => {
      listening = v;
      controller.onListeningChanged(v);
      if (!v) {
        level = 0;
      }
      wordsRead = controller.stats.wordsRead;
      wpm = controller.stats.wordsPerMinute();
    },
    onError: (msg) => {
      toast = msg;
      if (toastTimer) clearTimeout(toastTimer);
      toastTimer = setTimeout(() => {
        toast = '';
      }, 3500);
      console.error('[speech]', msg);
    },
    onEngineFailure: (msg) => {
      busy = false;
      listening = false;
      toast = msg;
      console.error('[engine failure]', msg);
    }
  });

  // Чувствительность применяется мгновенно (частая настройка)
  $effect(() => {
    engine.setSensitivity(s.sensitivity);
  });

  // Статистика раз в секунду
  $effect(() => {
    if (!listening) return;
    const tick = (): void => {
      wordsRead = controller.stats.wordsRead;
      wpm = controller.stats.wordsPerMinute();
    };
    tick();
    const id = setInterval(tick, 1000);
    return () => clearInterval(id);
  });

  // Открытие последнего документа
  let restored = false;
  $effect(() => {
    void restore();
  });

  async function restore(): Promise<void> {
    if (restored) return;
    restored = true;

    const key = s.currentDoc;
    if (key && key !== DOC_ASSET) {
      const saved = await loadCustomText(key);
      if (saved) {
        await setDocument(saved, key, s.customName || key);
        return;
      }
    }
    await loadBuiltin();
  }

  // Документ загрузился — отдаём контроллеру
  $effect(() => {
    const doc = view.doc;
    if (!doc) return;
    if (controller.getDocument() === doc) return;
    controller.loadDocument(doc, view.position);
    controller.setEngine((s.engine === ENGINE_VOSK ? 'VOSK' : 'NEURAL') as EngineKind);
  });

  $effect(() => {
    controller.setEngine((s.engine === ENGINE_VOSK ? 'VOSK' : 'NEURAL') as EngineKind);
  });

  // Позиция восстановлена — прокручиваем к ней
  $effect(() => {
    if (view.doc && view.position > 0) requestAnimationFrame(() => forceScrollToken++);
  });

  /** Кнопка микрофона. */
  async function toggleMic(): Promise<void> {
    if (engine.isRunning) {
      engine.stop();
      return;
    }

    if (!engine.isModelReady) {
      busy = true;
      progress = 0;
    }

    const timer = setInterval(() => {
      progress = engine.modelProgress;
      if (!engine.isModelLoading) {
        clearInterval(timer);
        busy = false;
      }
    }, 200);

    try {
      await engine.start();
    } catch (e) {
      busy = false;
      clearInterval(timer);
      toast = e instanceof Error ? e.message : 'Не удалось запустить распознавание';
      if (toastTimer) clearTimeout(toastTimer);
      toastTimer = setTimeout(() => {
        toast = '';
      }, 3500);
    }
  }

  function openPicker(): void {
    fileInput?.click();
  }

  async function onFilePicked(e: Event): Promise<void> {
    const input = e.target as HTMLInputElement;
    const file = input.files?.[0];
    if (!file) return;

    try {
      const text = await loadFile(file);
      const key = `file:${file.name}`;
      await persistCustomText(key, text);
      updateSettings({ currentDoc: key, customName: file.name });
      await flushPosition();
      await setDocument(text, key, file.name);
    } catch (err) {
      alert(err instanceof Error ? err.message : 'Не удалось открыть файл');
    } finally {
      input.value = '';
    }
  }

  async function restoreBuiltin(): Promise<void> {
    await flushPosition();
    updateSettings({ currentDoc: DOC_ASSET, customName: '' });
    await loadBuiltin();
    showSettings = false;
  }

  function onSeekWord(word: number): void {
    controller.seekToWord(word);
    const st = controller.getState();
    sectionIndex = st.sectionIndex;
    forceScrollToken++;
    savePositionThrottled(view.key, st.position);
  }

  function resetStats(): void {
    controller.stats.reset();
    wordsRead = 0;
    wpm = 0;
  }

  /** Процент прочитанного для полоски прогресса. */
  const percent = $derived(
    view.doc && view.doc.size > 0
      ? Math.round((trackerState.currentWord * 100) / view.doc.size)
      : 0
  );

  /**
   * Подсказка о поиске места: показываем только если режим длится
   * больше 3 секунд, и прячем через 5 секунд даже если он не закончился.
   */
  $effect(() => {
    const searching = trackerState.searchMode;

    if (searchHintTimer !== null) {
      clearTimeout(searchHintTimer);
      searchHintTimer = null;
    }

    if (!searching) {
      // Поиск закончился — сбрасываем всё, включая «закрыто вручную»
      searchHintVisible = false;
      searchHintDismissed = false;
      return;
    }

    if (searchHintDismissed) return;

    // Не отвлекаем при быстром поиске
    searchHintTimer = setTimeout(() => {
      searchHintVisible = true;
      searchHintTimer = setTimeout(() => {
        searchHintVisible = false;
        searchHintTimer = null;
      }, SEARCH_HINT_HIDE_MS);
    }, SEARCH_HINT_DELAY_MS);

    return () => {
      if (searchHintTimer !== null) {
        clearTimeout(searchHintTimer);
        searchHintTimer = null;
      }
    };
  });

  /** Закрыть подсказку вручную. */
  function dismissSearchHint(): void {
    searchHintVisible = false;
    searchHintDismissed = true;
    if (searchHintTimer !== null) {
      clearTimeout(searchHintTimer);
      searchHintTimer = null;
    }
  }
</script>

<div class="app">
  <AppHeader
    title={view.title}
    chapter={controller.getState().sectionTitle}
    {percent}
    onToc={() => (showToc = true)}
    onTitleTap={onTitleTap}
    onSearch={() => (showSearch = true)}
    onSettings={() => (showSettings = true)}
  />

  <main class="main">
    {#if searchHintVisible}
      <button class="search-hint" onclick={dismissSearchHint} title="Удержите слово, чтобы указать место">
        Ищу место… или удержите слово
      </button>
    {/if}

    {#if view.loading}
      <div class="center">
        <div class="loading-card">
          <Image name="hero-odyssey" class="hero" />
          <p>Загрузка текста…</p>
        </div>
      </div>
    {:else if view.error}
      <div class="center error">
        <div class="loading-card">
          <Image name="empty-state" class="empty-img" />
          <p>{view.error}</p>
        </div>
      </div>
    {:else}
      <Reader
        doc={view.doc}
        position={trackerState.currentWord}
        locked={trackerState.locked}
        {sectionIndex}
        {forceScrollToken}
        fontSp={s.fontSp}
        serif={s.serif}
        lineSpacing={s.lineSpacing}
        autoScroll={s.autoScroll}
        onSeekWord={onSeekWord}
      />
    {/if}

    {#if heard && listening}
      <div class="heard">слышу: {heard}</div>
    {/if}

    {#if toast}
      <div class="toast">{toast}</div>
    {/if}

    {#if busy}
      <div class="busy-overlay">
        <div class="busy-text">Загрузка модели (~{MODEL_SIZE_MB} МБ, один раз)… {Math.round(progress * 100)}%</div>
      </div>
    {/if}
  </main>

  {#if diag.enabled}
    <DiagnosticsPanel />
  {/if}

  <BottomBar
    {listening}
    {level}
    {busy}
    {progress}
    {wordsRead}
    {wpm}
    onToggleMic={toggleMic}
  />

  {#if showToc}
    <Toc
      doc={view.doc}
      position={trackerState.currentWord}
      open={showToc}
      onSeek={onSeekWord}
      onClose={() => (showToc = false)}
    />
  {/if}

  {#if showSearch}
    <SearchDialog doc={view.doc} onSeek={onSeekWord} onClose={() => (showSearch = false)} />
  {/if}

  {#if showSettings}
    <SettingsPanel
      onClose={() => (showSettings = false)}
      onResetStats={resetStats}
      onRestoreBuiltin={restoreBuiltin}
      onOpenFile={openPicker}
    />
  {/if}

  <input
    bind:this={fileInput}
    type="file"
    accept=".txt,.html,.htm,.mht,.mhtml,text/plain,text/html"
    onchange={onFilePicked}
    hidden
  />
</div>

<style>
  .app {
    display: grid;
    grid-template-rows: auto 1fr auto;
    height: 100%;
  }

  .main {
    position: relative;
    min-height: 0;
    overflow: hidden;
    /* Подсказка занимает своё место, Reader — оставшееся */
    display: flex;
    flex-direction: column;
  }

  .main > :global(.reader) {
    flex: 1;
    min-height: 0;
  }

  .center {
    height: 100%;
    display: grid;
    place-items: center;
    color: var(--text-subtle);
    padding: 24px;
    text-align: center;
  }

  .center.error {
    color: var(--bad);
  }

  .loading-card {
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 16px;
    max-width: 320px;
  }

  .loading-card :global(.hero) {
    width: min(280px, 70vw);
    height: auto;
    border-radius: 16px;
  }

  .loading-card :global(.empty-img) {
    width: min(200px, 55vw);
    height: auto;
    border-radius: 16px;
    opacity: 0.9;
  }

  /* --- Всплывающие подсказки --- */

  .heard {
    position: absolute;
    top: 8px;
    left: 50%;
    transform: translateX(-50%);
    max-width: calc(100% - 32px);
    padding: 5px 12px;
    border-radius: 10px;
    background: var(--bg-elevated);
    border: 1px solid var(--stroke);
    font-size: 12px;
    color: var(--text-subtle);
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    pointer-events: none;
  }

  .toast {
    position: absolute;
    left: 50%;
    bottom: 16px;
    transform: translateX(-50%);
    max-width: calc(100% - 32px);
    padding: 10px 16px;
    border-radius: 12px;
    background: var(--bg-elevated);
    border: 1px solid var(--stroke);
    box-shadow: 0 4px 16px rgba(0, 0, 0, 0.2);
    font-size: 14px;
    color: var(--text-main);
    text-align: center;
    pointer-events: none;
    animation: toast-in 250ms ease-out;
  }

  @keyframes toast-in {
    from {
      opacity: 0;
      transform: translate(-50%, 8px);
    }
    to {
      opacity: 1;
      transform: translate(-50%, 0);
    }
  }

  /*
   * Подсказка «потерял место»: тонкая полоска В ПОТОКЕ под шапкой.
   * В потоке, а не fixed — она сдвигает текст вниз, а не закрывает его.
   */
  .search-hint {
    display: block;
    width: calc(100% - 24px);
    max-width: 420px;
    margin: 6px auto 0;
    min-height: 32px;
    padding: 6px 14px;
    border-radius: 8px;
    background: color-mix(in srgb, var(--bg-panel) 93%, transparent);
    border: 1px solid color-mix(in srgb, var(--warn) 50%, transparent);
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.12);
    color: var(--warn);
    font-size: 13px;
    line-height: 1.2;
    /* Одна строка: подсказка не должна занимать место в области чтения */
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    text-align: center;
    animation: hint-in 250ms ease-out;
  }

  .search-hint:active {
    opacity: 0.7;
  }

  @keyframes hint-in {
    from {
      opacity: 0;
      transform: translateY(-6px);
    }
    to {
      opacity: 1;
      transform: translateY(0);
    }
  }

  .busy-overlay {
    position: absolute;
    inset: 0;
    display: grid;
    place-items: center;
    background: color-mix(in srgb, var(--bg) 85%, transparent);
    backdrop-filter: blur(2px);
    padding: 24px;
  }

  .busy-text {
    font-size: 14px;
    color: var(--warn);
    text-align: center;
  }
</style>
