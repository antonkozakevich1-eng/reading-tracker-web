import { defineConfig, type Plugin } from 'vite';
import { svelte } from '@sveltejs/vite-plugin-svelte';
import type { IncomingMessage, ServerResponse } from 'node:http';

/**
 * Vite по умолчанию отдаёт .tar.gz с Content-Encoding: gzip, то есть
 * распаковывает архив модели на лету — Vosk получил бы битые данные.
 * Явно помечаем модель как бинарный файл без сжатия.
 */
function serveModelRaw(): Plugin {
  const handler = (
    req: IncomingMessage,
    res: ServerResponse,
    next: () => void
  ): void => {
    const url = req.url ?? '';
    if (url.includes('/models/') && url.endsWith('.tar.gz')) {
      res.setHeader('Content-Type', 'application/gzip');
      res.setHeader('Content-Encoding', 'identity');
    }
    next();
  };

  return {
    name: 'serve-model-raw',
    configureServer(server) {
      server.middlewares.use(handler);
    },
    configurePreviewServer(server) {
      server.middlewares.use(handler);
    }
  };
}

export default defineConfig({
  plugins: [svelte(), serveModelRaw()],
  // Относительные пути — чтобы сборка работала и в подкаталоге
  base: './',
  build: {
    target: 'es2022',
    sourcemap: false,
    // vosk-browser содержит WASM и весит ~5.8 МБ — предупреждение не нужно
    chunkSizeWarningLimit: 7000
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
