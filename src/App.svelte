<script lang="ts">
  /**
   * Корневой компонент. Склейка: шапка, область чтения, нижняя панель.
   *
   * Пайплайн: SpeechEngine → MainController → TextTracker → trackerStore → Reader.
   * Настройки, темы, оглавление, поиск и статистика — этап 7.
   */
  import '../src/styles/global.css';
  import Reader from './components/Reader.svelte';
  import SpeechProbe from './components/SpeechProbe.svelte';
  import SettingsPanel from './components/SettingsPanel.svelte';
  import Toc from './components/Toc.svelte';
  import SearchDialog from './components/SearchDialog.svelte';
  import StatsBar from './components/StatsBar.svelte';
  import {
    documentStore,
    loadBuiltin,
    setDocument,
    persistCustomText,
    loadCustomText,
    savePositionThrottled,
    flushPosition,
    loadPosition
  } from './stores/document';
  import { trackerStore } from './stores/tracker';
  import { settings, updateSettings } from './stores/settings';
  import { loadFile } from './lib/io/TextLoader';
  import { MainController, type EngineKind } from './lib/MainController';
  import { DOC_ASSET, ENGINE_VOSK } from './lib/settings';

  let fileInput: HTMLInputElement | undefined = $state();

  let sectionIndex = $state(0);
  let forceScrollToken = $state(0);
  let heard = $state('');
  let toast = $state('');
  let toastTimer: ReturnType<typeof setTimeout> | null = null;

  // Панели
  let showSettings = $state(false);
  let showToc = $state(false);
  let showSearch = $state(false);

  // Статистика
  let wordsRead = $state(0);
  let wpm = $state(0);
  let activeMs = $state(0);
  let listening = $state(false);

  const view = $derived($documentStore);
  const trackerState = $derived($trackerStore);
  const s = $derived($settings);

  const controller = new MainController({
    onCursorRendered: (force) => {
      const st = controller.getState();
      sectionIndex = st.sectionIndex;
      if (force) forceScrollToken++;

      // Позиция сохраняется throttled (не чаще 500 мс)
      const key = view.key;
      savePositionThrottled(key, st.position);
    },
    onToast: (message) => {
      toast = message;
      if (toastTimer) clearTimeout(toastTimer);
      toastTimer = setTimeout(() => {
        toast = '';
      }, 2500);
    },
    onHeardChanged: (tail) => {
      heard = tail;
    }
  });

  /** Тик статистики раз в секунду, пока идёт прослушивание. */
  $effect(() => {
    if (!listening) return;

    const tick = (): void => {
      wordsRead = controller.stats.wordsRead;
      wpm = controller.stats.wordsPerMinute();
      activeMs = controller.stats.activeMillis;
    };

    tick();
    const id = setInterval(tick, 1000);
    return () => clearInterval(id);
  });

  // Обновляем статистику и по событию, даже если таймер молчит
  $effect(() => {
    void trackerState.currentWord;
    if (!listening) {
      wordsRead = controller.stats.wordsRead;
      activeMs = controller.stats.activeMillis;
    }
  });

  // При старте открываем последний документ или «Одиссею»
  $effect(() => {
    void restore();
  });

  let restored = false;

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

  // Документ загрузился — отдаём контроллеру и восстанавливаем позицию
  $effect(() => {
    const doc = view.doc;
    if (!doc) return;
    if (controller.getDocument() === doc) return;

    controller.loadDocument(doc, view.position);
    controller.setEngine((s.engine === ENGINE_VOSK ? 'VOSK' : 'NEURAL') as EngineKind);
  });

  // Движок изменился — пересоздаём трекер на той же позиции
  $effect(() => {
    const kind: EngineKind = s.engine === ENGINE_VOSK ? 'VOSK' : 'NEURAL';
    controller.setEngine(kind);
  });

  // Чувствительность уходит в AutoGain (через SpeechProbe)
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
      console.error(err);
      alert(err instanceof Error ? err.message : 'Не удалось открыть файл');
    } finally {
      input.value = '';
    }
  }

  /** Возврат к «Одиссее». */
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
    void savePositionThrottled(view.key, st.position);
  }

  function onSpeechPartial(text: string): void {
    controller.onSpeechPartial(text);
  }

  function onSpeechFinal(text: string): void {
    controller.onSpeechFinal(text);
  }

  function onListening(value: boolean): void {
    listening = value;
    controller.onListeningChanged(value);
    if (!value) {
      wordsRead = controller.stats.wordsRead;
      wpm = controller.stats.wordsPerMinute();
      activeMs = controller.stats.activeMillis;
    }
  }

  function resetStats(): void {
    controller.stats.reset();
    wordsRead = 0;
    wpm = 0;
    activeMs = 0;
  }

  /** Восстановление позиции для текущего документа после загрузки. */
  async function jumpToSaved(): Promise<void> {
    const pos = await loadPosition(view.key);
    if (pos > 0) onSeekWord(pos);
  }

  // Позиция восстановлена при загрузке документа — прокручиваем к ней
  $effect(() => {
    const doc = view.doc;
    if (!doc) return;
    if (view.position > 0) {
      requestAnimationFrame(() => forceScrollToken++);
    }
    void jumpToSaved;
  });
</script>

<div class="app">
  <header class="header">
    <button class="btn-icon" onclick={() => (showToc = true)} title="Оглавление" aria-label="Оглавление">
      <svg viewBox="0 0 24 24" width="20" height="20" fill="currentColor">
        <path d="M4 6h16v2H4V6Zm0 5h16v2H4v-2Zm0 5h16v2H4v-2Z" />
      </svg>
    </button>

    <div class="titles">
      <div class="title" title={view.title}>{view.title}</div>
      {#if view.doc}
        <div class="chapter">{controller.getState().sectionTitle} · {controller.getState().percent}%</div>
      {/if}
    </div>

    <div class="actions">
      {#if heard}
        <span class="heard" title={heard}>слышу: {heard}</span>
      {/if}

      <button class="btn-icon" onclick={() => (showSearch = true)} title="Поиск по тексту" aria-label="Поиск">
        <svg viewBox="0 0 24 24" width="20" height="20" fill="currentColor">
          <path
            d="M10 2a8 8 0 1 0 4.9 14.3l4.4 4.4 1.4-1.4-4.4-4.4A8 8 0 0 0 10 2Zm0 2a6 6 0 1 1 0 12 6 6 0 0 1 0-12Z"
          />
        </svg>
      </button>

      <button class="btn-icon" onclick={openPicker} title="Открыть файл (.txt, .html, .mht)" aria-label="Открыть файл">
        <svg viewBox="0 0 24 24" width="20" height="20" fill="currentColor">
          <path
            d="M10 2h4a2 2 0 0 1 2 2v1h2a2 2 0 0 1 2 2v3H4V7a2 2 0 0 1 2-2h2V4a2 2 0 0 1 2-2Zm0 3h4V4h-4v1ZM3 12h18v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-6Zm7 2v3a1 1 0 1 0 2 0v-3a1 1 0 1 0-2 0Z"
          />
        </svg>
      </button>

      <button class="btn-icon" onclick={() => (showSettings = true)} title="Настройки" aria-label="Настройки">
        <svg viewBox="0 0 24 24" width="20" height="20" fill="currentColor">
          <path
            d="M3 17v2h6v-2H3ZM3 5v2h10V5H3Zm10 16v-2h8v-2h-8v-2h-2v6h2ZM7 9v2H3v2h4v2h2V9H7Zm14 4v-2H11v2h10Zm-6-4h2V7h4V5h-4V3h-2v6Z"
          />
        </svg>
      </button>
    </div>
  </header>

  <main class="main">
    {#if view.loading}
      <div class="center">Загрузка текста…</div>
    {:else if view.error}
      <div class="center error">{view.error}</div>
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

    {#if toast}
      <div class="toast">{toast}</div>
    {/if}

    {#if trackerState.searchMode}
      <div class="banner">Потерял место. Читайте дальше — я найду, или удержите слово пальцем.</div>
    {/if}
  </main>

  <footer class="footer">
    <StatsBar {wordsRead} {wpm} {activeMs} running={listening} />
    <SpeechProbe
      sensitivity={s.sensitivity}
      onPartial={onSpeechPartial}
      onFinal={onSpeechFinal}
      onListening={onListening}
    />
  </footer>

  {#if showToc}
    <Toc
      doc={view.doc}
      position={trackerState.currentWord}
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
    grid-template-rows: var(--header-h) 1fr auto;
    height: 100%;
  }

  .header {
    display: flex;
    align-items: center;
    gap: 8px;
    padding: 0 12px;
    border-bottom: 1px solid var(--stroke);
    background: var(--bg-panel);
  }

  .titles {
    flex: 1;
    min-width: 0;
    text-align: center;
  }

  .title {
    font-weight: 600;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
  }

  .chapter {
    font-size: 12px;
    color: var(--text-subtle);
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
  }

  .actions {
    display: flex;
    gap: 4px;
    align-items: center;
    flex-shrink: 0;
  }

  .heard {
    font-size: 12px;
    color: var(--text-subtle);
    max-width: 220px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
  }

  .btn-icon {
    width: 40px;
    height: 40px;
    display: grid;
    place-items: center;
    border: 1px solid transparent;
    border-radius: var(--radius-sm);
    color: var(--text-subtle);
    transition: color var(--transition), border-color var(--transition);
  }

  .btn-icon:hover {
    color: var(--text-main);
    border-color: var(--stroke);
  }

  .main {
    min-height: 0;
    overflow: hidden;
    position: relative;
  }

  .center {
    height: 100%;
    display: grid;
    place-items: center;
    color: var(--text-subtle);
  }

  .center.error {
    color: var(--bad);
  }

  .toast {
    position: absolute;
    left: 50%;
    bottom: 16px;
    transform: translateX(-50%);
    background: var(--bg-elevated);
    border: 1px solid var(--stroke);
    border-radius: var(--radius);
    padding: 8px 14px;
    font-size: 13px;
    color: var(--text-main);
    box-shadow: 0 4px 16px rgba(0, 0, 0, 0.3);
    pointer-events: none;
  }

  .banner {
    position: absolute;
    left: 50%;
    top: 12px;
    transform: translateX(-50%);
    max-width: 90%;
    background: var(--bg-elevated);
    border: 1px solid var(--warn);
    border-radius: var(--radius);
    padding: 8px 14px;
    font-size: 13px;
    color: var(--warn);
    text-align: center;
    pointer-events: none;
  }

  .footer {
    border-top: 1px solid var(--stroke);
    background: var(--bg-panel);
  }
</style>
