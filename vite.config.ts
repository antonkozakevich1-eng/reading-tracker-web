import { defineConfig } from 'vite';
import { svelte } from '@sveltejs/vite-plugin-svelte';

export default defineConfig({
  plugins: [svelte()],
  // Относительные пути — чтобы сборка работала и в подкаталоге
  base: './',
  build: {
    target: 'es2022',
    sourcemap: false,
    // Модель речи крупная, предупреждение о размере чанка не нужно
    chunkSizeWarningLimit: 2000
  },
  server: {
    port: 5173,
    // Заголовки для SharedArrayBuffer: нужны некоторым сборкам vosk-browser
    headers: {
      'Cross-Origin-Opener-Policy': 'same-origin',
      'Cross-Origin-Embedder-Policy': 'require-corp'
    }
  }
});
