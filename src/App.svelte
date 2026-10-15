<script lang="ts">
  /**
   * Корневой компонент. Склейка: шапка, область чтения, нижняя панель.
   * На этом этапе — загрузка .txt и отображение текста.
   */
  import '../src/styles/global.css';
  import Reader from './components/Reader.svelte';
  import SpeechProbe from './components/SpeechProbe.svelte';
  import { documentStore, loadBuiltin, setDocument, persistCustomText } from './stores/document';
  import { loadFile } from './lib/io/TextLoader';
  import { settings } from './stores/settings';

  let fileInput: HTMLInputElement | undefined = $state();

  /** Индекс показываемой секции. */
  let sectionIndex = $state(0);

  /** Текущий документ из стора. */
  const view = $derived($documentStore);

  // При старте открываем «Одиссею»
  $effect(() => {
    void loadBuiltin();
  });

  /** Секция, соответствующая позиции чтения. */
  $effect(() => {
    const doc = view.doc;
    if (!doc) return;
    sectionIndex = doc.sectionOfWord(view.position);
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
      // Сохраняем текст, чтобы открыть после перезагрузки страницы
      await persistCustomText(key, text);
      await setDocument(text, key, file.name);
    } catch (err) {
      console.error(err);
      alert(err instanceof Error ? err.message : 'Не удалось открыть файл');
    } finally {
      // Позволяем выбрать тот же файл повторно
      input.value = '';
    }
  }

  /** Переход к слову (пока просто меняет секцию). */
  function seekWord(word: number): void {
    const doc = view.doc;
    if (!doc) return;
    sectionIndex = doc.sectionOfWord(word);
  }
</script>

<div class="app">
  <header class="header">
    <div class="title" title={view.title}>{view.title}</div>
    <div class="actions">
      <button class="btn btn-icon" onclick={openPicker} title="Открыть файл (.txt, .html, .mht)">
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
        position={view.position}
        {sectionIndex}
        onSeekWord={seekWord}
      />
    {/if}
  </main>

  <footer class="footer">
    <SpeechProbe sensitivity={$settings.sensitivity} />
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

  .title {
    font-weight: 600;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
  }

  .actions {
    display: flex;
    gap: 6px;
    flex-shrink: 0;
  }

  .main {
    min-height: 0;
    overflow: hidden;
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

  .footer {
    border-top: 1px solid var(--stroke);
    background: var(--bg-panel);
    font-size: 13px;
    color: var(--text-dim);
  }
</style>
