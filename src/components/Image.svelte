<script lang="ts">
  /**
   * Иллюстрация с graceful fallback.
   *
   * Картинки генерируются скриптом scripts/generate-images.mjs, затем
   * нормализуются (scripts/normalize-images.py) в WebP — 12 МБ исходников
   * сжимаются до ~0.5 МБ. Лежат в public/images/ (в .gitignore — артефакт).
   *
   * Пока файла нет, компонент ничего не показывает, чтобы UI оставался целым.
   */
  interface Props {
    /** Имя файла без расширения. */
    name: string;
    alt?: string;
    class?: string;
  }

  let { name, alt = '', class: className = '' }: Props = $props();

  /** 0 = пробуем webp, 1 = fallback на png, 2 = сдались. */
  let stage = $state(0);

  const src = $derived(
    stage === 0 ? `./images/${name}.webp` : `./images/${name}.png`
  );
</script>

{#if stage < 2}
  <img
    {src}
    {alt}
    class={className}
    loading="lazy"
    decoding="async"
    onerror={() => (stage += 1)}
  />
{/if}
