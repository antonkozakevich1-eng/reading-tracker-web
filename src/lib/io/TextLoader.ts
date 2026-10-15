/**
 * Загрузка текста из файлов .txt / .html / .mht.
 * Порт android TextLoader.java.
 *
 * Вся обработка клиентская. HTML обязательно санитайзится: никаких скриптов,
 * стилей и обработчиков событий из файла — иначе это XSS.
 */

/** Максимальный размер файла: 8 МБ (в оригинале 40 МБ, снижено в вебе). */
export const MAX_FILE_BYTES = 8 * 1024 * 1024;

export class FileTooLargeError extends Error {
  constructor(limitBytes: number) {
    super(`Файл слишком большой (лимит ${Math.round(limitBytes / 1024 / 1024)} МБ)`);
    this.name = 'FileTooLargeError';
  }
}

export class EmptyTextError extends Error {
  constructor() {
    super('В файле не найден текст');
    this.name = 'EmptyTextError';
  }
}

/** Определяет формат по расширению и MIME-типу. */
function detectKind(file: File): 'txt' | 'html' | 'mht' {
  const name = file.name.toLowerCase();
  if (name.endsWith('.mht') || name.endsWith('.mhtml')) return 'mht';
  if (name.endsWith('.html') || name.endsWith('.htm')) return 'html';
  if (file.type === 'text/html') return 'html';
  return 'txt';
}

/**
 * HTML → текст. Убираем script/style/head целиком, затем теги,
 * декодируем основные сущности.
 */
export function htmlToText(html: string): string {
  let s = html;

  // Вырезаем опасные и неконтентные блоки целиком (включая содержимое)
  s = s.replace(/<script\b[^>]*>[\s\S]*?<\/script>/gi, ' ');
  s = s.replace(/<style\b[^>]*>[\s\S]*?<\/style>/gi, ' ');
  s = s.replace(/<head\b[^>]*>[\s\S]*?<\/head>/gi, ' ');
  s = s.replace(/<noscript\b[^>]*>[\s\S]*?<\/noscript>/gi, ' ');
  s = s.replace(/<!--[\s\S]*?-->/g, ' ');

  // Блочные теги → перевод строки
  s = s.replace(/<\s*(br|hr)\s*\/?>/gi, '\n');
  s = s.replace(
    /<\/?\s*(p|div|section|article|header|footer|li|tr|h[1-6]|blockquote)\b[^>]*>/gi,
    '\n'
  );

  // Остальные теги вырезаем
  s = s.replace(/<[^>]+>/g, ' ');

  // Декодируем сущности
  s = decodeEntities(s);

  // Схлопываем пустые строки и хвостовые пробелы
  s = s
    .split('\n')
    .map((line) => line.replace(/[ \t\u00a0]+/g, ' ').trim())
    .join('\n')
    .replace(/\n{3,}/g, '\n\n');

  return s.trim();
}

/** Декодирование HTML-сущностей. */
function decodeEntities(s: string): string {
  const named: Record<string, string> = {
    amp: '&',
    lt: '<',
    gt: '>',
    quot: '"',
    apos: "'",
    nbsp: ' ',
    laquo: '«',
    raquo: '»',
    mdash: '—',
    ndash: '–',
    hellip: '…',
    copy: '©'
  };

  return s.replace(/&(#x?[0-9a-f]+|[a-z]+);/gi, (match, entity: string) => {
    if (entity.startsWith('#')) {
      const isHex = entity[1] === 'x' || entity[1] === 'X';
      const code = parseInt(isHex ? entity.slice(2) : entity.slice(1), isHex ? 16 : 10);
      if (Number.isFinite(code) && code > 0 && code <= 0x10ffff) {
        return String.fromCodePoint(code);
      }
      return match;
    }
    return named[entity.toLowerCase()] ?? match;
  });
}

/**
 * MHT (MIME HTML) → текст.
 * В оригинале TextLoader разбирает MIME-части и берёт первую text/html
 * или text/plain. Здесь — тот же подход.
 */
export function mhtToText(mht: string): string {
  // Части разделяются строкой из дефисов; заголовки отделены пустой строкой
  const parts = mht.split(/^-{3,}.*$/m);

  for (const part of parts) {
    const sep = part.search(/\r?\n\r?\n/);
    if (sep === -1) continue;

    const headers = part.slice(0, sep);
    const body = part.slice(sep).replace(/^\r?\n\r?\n/, '');

    const contentType = /content-type:\s*([^;\r\n]+)/i.exec(headers)?.[1]?.trim().toLowerCase();

    if (contentType === 'text/html') {
      return htmlToText(decodeQuotedPrintableMaybe(body, headers));
    }
    if (contentType === 'text/plain') {
      return decodeQuotedPrintableMaybe(body, headers).trim();
    }
  }

  // Не нашли размеченных частей — считаем целиком HTML
  return htmlToText(mht);
}

/**
 * Декодирует quoted-printable или base64, если так указано в заголовках.
 * Переносы Content-Transfer-Encoding обрабатываются по стандарту.
 */
function decodeQuotedPrintableMaybe(body: string, headers: string): string {
  const encoding = /content-transfer-encoding:\s*([^\s;\r\n]+)/i
    .exec(headers)?.[1]
    ?.toLowerCase();

  if (encoding === 'base64') {
    try {
      const clean = body.replace(/\s+/g, '');
      const binary = atob(clean);
      const bytes = Uint8Array.from(binary, (c) => c.charCodeAt(0));
      return new TextDecoder('utf-8').decode(bytes);
    } catch {
      return body;
    }
  }

  if (encoding === 'quoted-printable') {
    return decodeQuotedPrintable(body);
  }

  return body;
}

/** Декодирование quoted-printable в UTF-8. */
function decodeQuotedPrintable(input: string): string {
  // Мягкие переносы: «=\n» склеивает строки
  const joined = input.replace(/=\r?\n/g, '');

  const bytes: number[] = [];
  for (let i = 0; i < joined.length; i++) {
    const ch = joined[i]!;
    if (ch === '=') {
      const hex = joined.slice(i + 1, i + 3);
      if (/^[0-9a-fA-F]{2}$/.test(hex)) {
        bytes.push(parseInt(hex, 16));
        i += 2;
        continue;
      }
    }
    // Остальные символы — как есть (ASCII-совместимо)
    const code = ch.codePointAt(0)!;
    if (code < 0x80) {
      bytes.push(code);
    } else {
      bytes.push(...new TextEncoder().encode(ch));
    }
  }

  return new TextDecoder('utf-8').decode(Uint8Array.from(bytes));
}

/** Читает файл и возвращает готовый к парсингу текст. */
export async function loadFile(file: File): Promise<string> {
  if (file.size > MAX_FILE_BYTES) {
    throw new FileTooLargeError(MAX_FILE_BYTES);
  }

  const raw = await file.text();
  const kind = detectKind(file);

  let text: string;
  switch (kind) {
    case 'html':
      text = htmlToText(raw);
      break;
    case 'mht':
      text = mhtToText(raw);
      break;
    default:
      text = raw;
  }

  if (!text.trim()) {
    throw new EmptyTextError();
  }

  return text;
}

/** Загружает встроенный текст (Одиссею) из public/. */
export async function loadBuiltinText(url = './odyssey_zhukovsky.txt'): Promise<string> {
  const res = await fetch(url);
  if (!res.ok) {
    throw new Error(`Не удалось загрузить встроенный текст: ${res.status}`);
  }
  return res.text();
}

export const TextLoader = { loadFile, loadBuiltinText, htmlToText, mhtToText };
