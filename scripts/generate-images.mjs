#!/usr/bin/env node
/**
 * Генерация иллюстраций через OpenAI Images API.
 *
 * Ключ берётся ТОЛЬКО из process.env.OPENAI_API_KEY и никогда не попадает
 * в клиентский код, в репозиторий или в вывод этого скрипта.
 *
 * Запуск:
 *   node scripts/generate-images.mjs
 *   node scripts/generate-images.mjs --force          # перегенерировать всё
 *   node scripts/generate-images.mjs hero-odyssey     # только одну картинку
 *   node scripts/generate-images.mjs --dry-run        # показать план, не тратя деньги
 *
 * Идемпотентность: уже существующие файлы пропускаются, если не задан --force.
 */

import { readFile, writeFile, mkdir, access } from 'node:fs/promises';
import { dirname, resolve, join } from 'node:path';
import { fileURLToPath } from 'node:url';

const __dirname = dirname(fileURLToPath(import.meta.url));
const ROOT = resolve(__dirname, '..');

const PROMPTS_FILE = join(__dirname, 'image-prompts.json');
const OUT_DIR = join(ROOT, 'public', 'images');
const API_URL = 'https://api.openai.com/v1/images/generations';

/** Разбирает аргументы командной строки. */
function parseArgs(argv) {
  const flags = { force: false, dryRun: false, only: [] };
  for (const arg of argv) {
    if (arg === '--force' || arg === '-f') flags.force = true;
    else if (arg === '--dry-run') flags.dryRun = true;
    else if (!arg.startsWith('-')) flags.only.push(arg);
  }
  return flags;
}

/** Проверяет, существует ли файл. */
async function exists(path) {
  try {
    await access(path);
    return true;
  } catch {
    return false;
  }
}

/** Человекочитаемый размер. */
function humanSize(bytes) {
  if (bytes < 1024) return `${bytes} Б`;
  if (bytes < 1024 * 1024) return `${(bytes / 1024).toFixed(1)} КБ`;
  return `${(bytes / 1024 / 1024).toFixed(2)} МБ`;
}

/** Обращается к OpenAI Images API. */
async function generate(prompt, { model, size }, apiKey) {
  const res = await fetch(API_URL, {
    method: 'POST',
    headers: {
      Authorization: `Bearer ${apiKey}`,
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({
      model,
      prompt,
      size,
      n: 1
    })
  });

  if (!res.ok) {
    // Тело ошибки может содержать чувствительные данные — берём только сообщение
    let detail = `HTTP ${res.status}`;
    try {
      const body = await res.json();
      if (body?.error?.message) detail = body.error.message;
    } catch {
      // тело не JSON — оставляем статус
    }
    throw new Error(detail);
  }

  const data = await res.json();
  const item = data?.data?.[0];
  if (!item) throw new Error('API вернул пустой ответ');

  // gpt-image-1 возвращает base64; dall-e — url
  if (item.b64_json) {
    return Buffer.from(item.b64_json, 'base64');
  }
  if (item.url) {
    const img = await fetch(item.url);
    if (!img.ok) throw new Error(`не удалось скачать изображение: HTTP ${img.status}`);
    return Buffer.from(await img.arrayBuffer());
  }

  throw new Error('в ответе нет ни b64_json, ни url');
}

async function main() {
  const flags = parseArgs(process.argv.slice(2));

  console.log('Генерация иллюстраций\n');

  // Читаем промты
  let config;
  try {
    config = JSON.parse(await readFile(PROMPTS_FILE, 'utf8'));
  } catch (e) {
    console.error(`Не удалось прочитать ${PROMPTS_FILE}: ${e.message}`);
    process.exit(1);
  }

  let images = config.images ?? [];
  if (flags.only.length > 0) {
    images = images.filter((img) => flags.only.includes(img.name));
    if (images.length === 0) {
      console.error(`Не найдено ни одного промта из: ${flags.only.join(', ')}`);
      process.exit(1);
    }
  }

  console.log(`Промтов: ${images.length}`);
  console.log(`Куда:    public/images/\n`);

  // Проверяем ключ заранее — до любых запросов
  const apiKey = process.env.OPENAI_API_KEY;
  if (!apiKey) {
    if (flags.dryRun) {
      console.log('OPENAI_API_KEY не задан — это --dry-run, продолжаю без ключа.\n');
    } else {
      console.error('OPENAI_API_KEY не задан.\n');
      console.error('Задайте ключ в переменной окружения:');
      console.error('  PowerShell:  $env:OPENAI_API_KEY = "sk-..."; node scripts/generate-images.mjs');
      console.error('  bash:        OPENAI_API_KEY=sk-... node scripts/generate-images.mjs');
      console.error('\nКлюч НЕ нужно класть в файл .env внутри репозитория — он в .gitignore,');
      console.error('но проще передавать его через переменную окружения.');
      process.exit(1);
    }
  }

  await mkdir(OUT_DIR, { recursive: true });

  let created = 0;
  let skipped = 0;
  let failed = 0;

  for (let i = 0; i < images.length; i++) {
    const img = images[i];
    const target = join(OUT_DIR, `${img.name}.png`);
    const label = `[${i + 1}/${images.length}] ${img.name}`;

    if (!flags.force && (await exists(target))) {
      console.log(`${label} — пропускаю (уже есть, --force для перегенерации)`);
      skipped++;
      continue;
    }

    if (flags.dryRun) {
      console.log(`${label} — ${img.model}, ${img.size}`);
      console.log(`    ${img.prompt.slice(0, 80)}...`);
      continue;
    }

    process.stdout.write(`${label} — генерирую (${img.model}, ${img.size})... `);

    try {
      const started = Date.now();
      const buffer = await generate(img.prompt, img, apiKey);
      await writeFile(target, buffer);
      const secs = ((Date.now() - started) / 1000).toFixed(1);
      console.log(`готово за ${secs} с, ${humanSize(buffer.length)}`);
      created++;
    } catch (e) {
      console.log('ОШИБКА');
      console.error(`    ${e.message}`);
      failed++;
    }
  }

  console.log(`\nИтог: создано ${created}, пропущено ${skipped}, ошибок ${failed}`);

  if (failed > 0) process.exit(1);
}

main().catch((e) => {
  console.error(`\nНепредвиденная ошибка: ${e.message}`);
  process.exit(1);
});
