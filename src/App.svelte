<script lang="ts">
  /**
   * Корневой компонент. Склейка: шапка, область чтения, нижняя панель.
   *
   * Пайплайн этапа 6:
   *   SpeechEngine.onFinal → MainController.onSpeechFinal → TextTracker.onFinal
   *   → позиция в trackerStore → Reader.setCursor
   */
  import '../src/styles/global.css';
  import Reader from './components/Reader.svelte';
  import SpeechProbe from './components/SpeechProbe.svelte';
  import { documentStore, loadBuiltin, setDocument, persistCustomText } from './stores/document';
  import { trackerStore } from './stores/tracker';
  import { settings } from './stores/settings';
  import { loadFile } from './lib/io/TextLoader';
  import { MainController } from './lib/MainController';
  import type { EngineKind } from './lib/MainController';

  let fileInput: HTMLInputElement | undefined = $state();

  /** Секция, которую показывает Reader. */
  let sectionIndex = $state(0);

  /** Счётчик принудительных прокруток — Reader реагирует на его изменение. */
  let forceScrollToken = $state(0);

  /** Строка «слышу: …». */
  let heard = $state('');

  /** Всплывающее сообщение (аналог Toast). */
  let toast = $state('');
  let toastTimer: ReturnType<typeof setTimeout> | null = null;

  const view = $derived($documentStore);
  const trackerState = $derived($trackerStore);

  /** Контроллер связывает трекер, статистику и речь. */
  const controller = new MainController({
    onCursorRendered: (force) => {
      const st = controller.getState();
      sectionIndex = st.sectionIndex;
      if (force) forceScrollToken++;
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

  // При старте открываем «Одиссею»
  $effect(() => {
    void loadBuiltin();
  });

  // Документ загрузился — отдаём его контроллеру
  $effect(() => {
    const doc = view.doc;
    if (!doc) return;
    if (controller.getDocument() === doc) return;

    controller.loadDocument(doc, view.position);
    controller.setEngine(($settings.engine === 1 ? 'VOSK' : 'NEURAL') as EngineKind);
  });

  // Позиция из хранилища (восстановление сессии)
  $effect(() => {
    const t = controller.getTracker();
    if (!t) return;
    if (t.position === view.position) return;
  });

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
      await setDocument(text, key, file.name);
    } catch (err) {
      console.error(err);
      alert(err instanceof Error ? err.message : 'Не удалось открыть файл');
    } finally {
      input.value = '';
    }
  }

  /** Долгое нажатие на слово → «читаем отсюда». */
  function onSeekWord(word: number): void {
    controller.seekToWord(word);
    const st = controller.getState();
    sectionIndex = st.sectionIndex;
    forceScrollToken++;
  }

  /** Речь из панели распознавания. */
  function onSpeechPartial(text: string): void {
    controller.onSpeechPartial(text);
  }

  function onSpeechFinal(text: string): void {
    controller.onSpeechFinal(text);
  }

  /** Прослушивание включилось/выключилось. */
  function onListening(listening: boolean): void {
    controller.onListeningChanged(listening);
  }
</script>

<div class="app">
  <header class="header">
    <div class="titles">
      <div class="title" title={view.title}>{view.title}</div>
      {#if view.doc}
        <div class="chapter">
          {controller.getState().sectionTitle} · {Math.round((trackerState.currentWord * 100) / Math.max(1, view.doc.size))}%
        </div>
      {/if}
    </div>

    <div class="actions">
      {#if heard}
        <span class="heard" title={heard}>слышу: {heard}</span>
      {/if}
      <button class="btn-icon" onclick={openPicker} title="Открыть файл (.txt, .html, .mht)">
        <svg viewBox="0 0 24 24" width="20" height="20" fill="currentColor">
          <path
            d="M10 2h4a2 2 0 0 1 2 2v1h2a2 2 0 0 1 2 2v3H4V7a2 2 0 0 1 2-2h2V4a2 2 0 0 1 2-2Zm0 3h4V4h-4v1ZM3 12h18v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-6Zm7 2v3a1 1 0 1 0 2 0v-3a1 1 0 1 0-2 0Z"
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
        fontSp={$settings.fontSp}
        serif={$settings.serif}
        lineSpacing={$settings.lineSpacing}
        autoScroll={$settings.autoScroll}
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
    <SpeechProbe
      sensitivity={$settings.sensitivity}
      onPartial={onSpeechPartial}
      onFinal={onSpeechFinal}
      onListening={onListening}
    />
  </footer>

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
    justify-content: space-between;
    gap: 12px;
    padding: 0 16px;
    border-bottom: 1px solid var(--stroke);
    background: var(--bg-panel);
  }

  .titles {
    min-width: 0;
  }

  .title {
    font-weight: 600;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
  }

  .chapter {
    font-size: 12px;
    color: var(--text-dim);
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
  }

  .actions {
    display: flex;
    gap: 8px;
    align-items: center;
    flex-shrink: 0;
  }

  .heard {
    font-size: 12px;
    color: var(--text-muted);
    max-width: 300px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
  }

  .btn-icon {
    width: 40px;
    height: 40px;
    display: grid;
    place-items: center;
    border: 1px solid var(--stroke);
    border-radius: var(--radius-sm);
    background: var(--bg-elevated);
  }

  .btn-icon:hover {
    border-color: var(--accent);
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
    color: var(--text-dim);
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
    font-size: 13px;
    color: var(--text-dim);
  }
</style>
