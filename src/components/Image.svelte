<script lang="ts">
  /**
   * Иллюстрация с graceful fallback.
   *
   * Картинки генерируются скриптом scripts/generate-images.mjs и лежат
   * в public/images/ (в .gitignore — артефакт). Пока файла нет, компонент
   * ничего не показывает, чтобы UI оставался целым.
   */
  interface Props {
    /** Имя файла без расширения. */
    name: string;
    alt?: string;
    class?: string;
  }

  let { name, alt = '', class: className = '' }: Props = $props();

  let failed = $state(false);

  const src = $derived(`./images/${name}.png`);
</script>

{#if !failed}
  <img
    {src}
    {alt}
    class={className}
    loading="lazy"
    decoding="async"
    onerror={() => (failed = true)}
  />
{/if}
