<script lang="ts">
  /**
   * Компактная шапка (mobile-first).
   *
   * Слева: оглавление. Центр: название текущей песни (клик — тоже оглавление).
   * Справа: поиск и настройки.
   */
  interface Props {
    title?: string;
    /** Название текущей песни для центра. */
    chapter?: string;
    /** Процент прочитанного, 0..100. */
    percent?: number;
    onToc?: () => void;
    /** Тап по названию в центре (отдельно от кнопки оглавления). */
    onTitleTap?: () => void;
    onSearch?: () => void;
    onSettings?: () => void;
  }

  let {
    title = '',
    chapter = '',
    percent = 0,
    onToc,
    onTitleTap,
    onSearch,
    onSettings
  }: Props = $props();
</script>

<header class="header">
  <button class="icon-btn" onclick={onToc} aria-label="Оглавление">
    <svg viewBox="0 0 24 24" width="22" height="22" fill="currentColor">
      <path d="M4 6h16v2H4V6Zm0 5h16v2H4v-2Zm0 5h16v2H4v-2Z" />
    </svg>
  </button>

  <button class="center" onclick={onTitleTap ?? onToc} aria-label="Открыть оглавление">
    <span class="chapter">{chapter || title}</span>
  </button>

  <div class="right">
    <button class="icon-btn" onclick={onSearch} aria-label="Поиск">
      <svg viewBox="0 0 24 24" width="22" height="22" fill="currentColor">
        <path
          d="M10 2a8 8 0 1 0 4.9 14.3l4.4 4.4 1.4-1.4-4.4-4.4A8 8 0 0 0 10 2Zm0 2a6 6 0 1 1 0 12 6 6 0 0 1 0-12Z"
        />
      </svg>
    </button>

    <button class="icon-btn" onclick={onSettings} aria-label="Настройки">
      <svg viewBox="0 0 24 24" width="22" height="22" fill="currentColor">
        <path
          d="M12 8a4 4 0 1 0 0 8 4 4 0 0 0 0-8Zm0 2a2 2 0 1 1 0 4 2 2 0 0 1 0-4Zm-1.4-8h2.8l.4 2.1c.5.2 1 .4 1.4.8l2-.8 1.4 2.4-1.6 1.5c.1.5.1 1 0 1.5l1.6 1.5-1.4 2.4-2-.8c-.4.4-.9.6-1.4.8l-.4 2.1h-2.8l-.4-2.1c-.5-.2-1-.4-1.4-.8l-2 .8-1.4-2.4 1.6-1.5a6 6 0 0 1 0-1.5L2.6 6.9l1.4-2.4 2 .8c.4-.4.9-.6 1.4-.8L10.6 2Z"
        />
      </svg>
    </button>
  </div>
</header>

<!-- Полоска прогресса по всему документу -->
<div class="progress" aria-hidden="true">
  <div class="progress-fill" style:width="{Math.min(100, Math.max(0, percent))}%"></div>
</div>

<style>
  .header {
    display: grid;
    grid-template-columns: auto 1fr auto;
    align-items: center;
    gap: 8px;
    height: 52px;
    padding: 0 8px;
    padding-top: env(safe-area-inset-top);
    padding-left: max(8px, env(safe-area-inset-left));
    padding-right: max(8px, env(safe-area-inset-right));
    background: var(--bg-panel);
    /* Высота растёт на величину safe-area */
    box-sizing: content-box;
  }

  .icon-btn {
    width: 44px;
    height: 44px;
    display: grid;
    place-items: center;
    border-radius: 10px;
    color: var(--text-subtle);
    transition: color 250ms ease-out, transform 250ms ease-out;
  }

  .icon-btn:active {
    transform: scale(0.9);
    color: var(--text-main);
  }

  .right {
    display: flex;
    gap: 2px;
  }

  .center {
    min-width: 0;
    height: 44px;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 0 4px;
  }

  .chapter {
    font-size: 15px;
    font-weight: 600;
    color: var(--text-main);
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
  }

  /* --- Прогресс --- */

  .progress {
    height: 2px;
    background: var(--stroke);
  }

  .progress-fill {
    height: 100%;
    background: var(--accent);
    /* Только ширина — дёшево для композитора */
    transition: width 250ms ease-out;
  }
</style>
