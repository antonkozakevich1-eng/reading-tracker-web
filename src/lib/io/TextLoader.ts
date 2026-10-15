/**
 * Превращает содержимое файла (.txt, .html, .mht) в обычный текст.
 * Порт TextLoader.kt.
 *
 * Кодировка определяется автоматически: BOM, объявление в HTML,
 * иначе строгий UTF-8 с откатом на windows-1251.
 *
 * Отличия от Android: нет java.nio.charset, поэтому декодеры
 * реализованы вручную (windows-1251, latin1, UTF-16LE/BE).
 */

/** Максимальный размер файла: 8 МБ. */
export const MAX_FILE_BYTES = 8 * 1024 * 1024;

const BOM_CHAR = '\ufeff';

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

// ---------- кодировки ----------

/** Таблица windows-1251 для байтов 0x80–0xFF. */
const CP1251_HIGH: string =
  '\u0402\u0403\u201a\u0453\u201e\u2026\u2020\u2021\u20ac\u2030\u0409\u2039\u040a\u040c\u040b\u040f' +
  '\u0452\u2018\u2019\u201c\u201d\u2022\u2013\u2014\u0098\u2122\u0459\u203a\u045a\u045c\u045b\u045f' +
  '\u00a0\u040e\u045e\u0408\u00a4\u0490\u00a6\u00a7\u0401\u00a9\u0404\u00ab\u00ac\u00ad\u00ae\u0407' +
  '\u00b0\u00b1\u0406\u0456\u0491\u00b5\u00b6\u00b7\u0451\u2116\u0454\u00bb\u0458\u0405\u0455\u0457' +
  '\u0410\u0411\u0412\u0413\u0414\u0415\u0416\u0417\u0418\u0419\u041a\u041b\u041c\u041d\u041e\u041f' +
  '\u0420\u0421\u0422\u0423\u0424\u0425\u0426\u0427\u0428\u0429\u042a\u042b\u042c\u042d\u042e\u042f' +
  '\u0430\u0431\u0432\u0433\u0434\u0435\u0436\u0437\u0438\u0439\u043a\u043b\u043c\u043d\u043e\u043f' +
  '\u0440\u0441\u0442\u0443\u0444\u0445\u0446\u0447\u0448\u0449\u044a\u044b\u044c\u044d\u044e\u044f';

/** Декодирует байты как windows-1251. */
function decodeCp1251(bytes: Uint8Array): string {
  let out = '';
  for (let i = 0; i < bytes.length; i++) {
    const b = bytes[i]!;
    out += b < 0x80 ? String.fromCharCode(b) : CP1251_HIGH[b - 0x80]!;
  }
  return out;
}

/** Декодирует байты как latin1 (ISO-8859-1). */
function decodeLatin1(bytes: Uint8Array): string {
  let out = '';
  // Порциями, чтобы не переполнить стек на длинных строках
  const CHUNK = 8192;
  for (let i = 0; i < bytes.length; i += CHUNK) {
    out += String.fromCharCode(...bytes.subarray(i, i + CHUNK));
  }
  return out;
}

/** Декодирует байты как UTF-16LE. */
function decodeUtf16Le(bytes: Uint8Array): string {
  let out = '';
  for (let i = 0; i + 1 < bytes.length; i += 2) {
    out += String.fromCharCode(bytes[i]! | (bytes[i + 1]! << 8));
  }
  return out;
}

/** Декодирует байты как UTF-16BE. */
function decodeUtf16Be(bytes: Uint8Array): string {
  let out = '';
  for (let i = 0; i + 1 < bytes.length; i += 2) {
    out += String.fromCharCode((bytes[i]! << 8) | bytes[i + 1]!);
  }
  return out;
}

/**
 * Строгий UTF-8: возвращает null, если байты не являются корректным UTF-8.
 * Аналог decoder с CodingErrorAction.REPORT.
 */
function decodeUtf8Strict(bytes: Uint8Array): string | null {
  for (let i = 0; i < bytes.length; ) {
    const b = bytes[i]!;

    if (b < 0x80) {
      i += 1;
      continue;
    }

    let need: number;
    let cp: number;

    if ((b & 0xe0) === 0xc0) {
      need = 1;
      cp = b & 0x1f;
    } else if ((b & 0xf0) === 0xe0) {
      need = 2;
      cp = b & 0x0f;
    } else if ((b & 0xf8) === 0xf0) {
      need = 3;
      cp = b & 0x07;
    } else {
      return null;
    }

    if (i + need >= bytes.length + 0 && i + need > bytes.length - 1) return null;

    for (let k = 1; k <= need; k++) {
      const c = bytes[i + k];
      if (c === undefined || (c & 0xc0) !== 0x80) return null;
      cp = (cp << 6) | (c & 0x3f);
    }

    // Отсекаем переполнения и суррогаты
    if (cp > 0x10ffff || (cp >= 0xd800 && cp <= 0xdfff)) return null;
    if (need === 2 && cp < 0x800) return null;
    if (need === 3 && cp < 0x10000) return null;

    i += need + 1;
  }

  // Корректный UTF-8 — можно декодировать штатным TextDecoder
  return new TextDecoder('utf-8').decode(bytes);
}

/** Ищет объявление кодировки в заголовке или meta-теге. */
const META_CHARSET = /charset\s*=\s*["']?\s*([A-Za-z0-9_\-:.]+)/i;

function sniffMetaCharset(bytes: Uint8Array): string | null {
  const head = decodeLatin1(bytes.subarray(0, Math.min(bytes.length, 4096)));
  const m = META_CHARSET.exec(head);
  return m ? (m[1] ?? null) : null;
}

/** Распознаёт имя кодировки. */
function charsetByName(name: string): 'utf-8' | 'cp1251' | 'utf-16le' | 'utf-16be' | 'latin1' | null {
  const n = name.trim().replace(/^["']|["']$/g, '').toLowerCase();
  switch (n) {
    case 'utf-8':
    case 'utf8':
      return 'utf-8';
    case 'windows-1251':
    case 'cp1251':
    case 'win-1251':
      return 'cp1251';
    case 'utf-16le':
    case 'utf-16':
      return 'utf-16le';
    case 'utf-16be':
      return 'utf-16be';
    case 'iso-8859-1':
    case 'latin1':
      return 'latin1';
    default:
      return null;
  }
}

/** BOM → declared → строгий UTF-8 → windows-1251. */
export function decode(bytes: Uint8Array, declared: string | null): string {
  if (bytes.length >= 3 && bytes[0] === 0xef && bytes[1] === 0xbb && bytes[2] === 0xbf) {
    return new TextDecoder('utf-8').decode(bytes.subarray(3));
  }
  if (bytes.length >= 2 && bytes[0] === 0xff && bytes[1] === 0xfe) {
    return decodeUtf16Le(bytes.subarray(2));
  }
  if (bytes.length >= 2 && bytes[0] === 0xfe && bytes[1] === 0xff) {
    return decodeUtf16Be(bytes.subarray(2));
  }

  if (declared) {
    const named = charsetByName(declared);
    if (named === 'utf-8') {
      return new TextDecoder('utf-8', { fatal: false }).decode(bytes);
    }
    if (named === 'cp1251') return decodeCp1251(bytes);
    if (named === 'utf-16le') return decodeUtf16Le(bytes);
    if (named === 'utf-16be') return decodeUtf16Be(bytes);
    if (named === 'latin1') return decodeLatin1(bytes);
  }

  const utf8 = decodeUtf8Strict(bytes);
  return utf8 !== null ? utf8 : decodeCp1251(bytes);
}

function decodeHtml(bytes: Uint8Array, headerCharset: string | null): string {
  const declared = headerCharset ?? sniffMetaCharset(bytes);
  return decode(bytes, declared);
}

// ---------- определение формата ----------

function headAsText(bytes: Uint8Array, n = 2048): string {
  return decodeLatin1(bytes.subarray(0, Math.min(bytes.length, n)));
}

export function looksLikeHtml(bytes: Uint8Array): boolean {
  const head = headAsText(bytes).toLowerCase();
  return (
    head.includes('<html') ||
    head.includes('<!doctype html') ||
    head.includes('<body') ||
    head.includes('<head')
  );
}

export function looksLikeMht(bytes: Uint8Array): boolean {
  const head = headAsText(bytes, 4096).trimStart();
  const mimeStart = [
    'From:',
    'MIME-Version:',
    'Subject:',
    'Snapshot-Content-Location:',
    'Content-Type: multipart'
  ].some((p) => head.toLowerCase().startsWith(p.toLowerCase()));
  return mimeStart && head.toLowerCase().includes('content-type:');
}

// ---------- MHT ----------

interface MimePart {
  headers: Map<string, string>;
  body: Uint8Array;
}

function mhtToText(bytes: Uint8Array): string {
  const part = findHtmlPart(parseMime(decodeLatin1(bytes)));
  if (!part) return decode(bytes, null);

  const contentType = part.headers.get('content-type') ?? '';
  const m = META_CHARSET.exec(contentType);
  const charset = m ? (m[1] ?? null) : null;
  const html = decodeHtml(part.body, charset);

  return contentType.toLowerCase().includes('html') || looksLikeHtml(part.body)
    ? htmlToText(html)
    : html;
}

/** Первая часть text/html (иначе text/plain), с учётом вложенных multipart. */
function findHtmlPart(root: MimePart[]): MimePart | null {
  const walk = (parts: MimePart[], wanted: string): MimePart | null => {
    for (const p of parts) {
      const type = (p.headers.get('content-type') ?? '').toLowerCase();
      if (type.startsWith('multipart/')) {
        const inner = parseMime(decodeLatin1(p.body));
        const found = walk(inner, wanted);
        if (found) return found;
      } else if (type.startsWith(wanted)) {
        return p;
      }
    }
    return null;
  };
  return walk(root, 'text/html') ?? walk(root, 'text/plain');
}

/** Разбирает сообщение MIME в список листовых частей (для multipart) или одну часть. */
function parseMime(message: string): MimePart[] {
  const { headers, bodyStart } = parseHeaders(message, 0);
  const type = headers.get('content-type') ?? '';

  const bm = /boundary\s*=\s*"?([^";\s]+)"?/i.exec(type);
  const boundary = bm ? (bm[1] ?? null) : null;

  if (!type.toLowerCase().startsWith('multipart/') || boundary === null) {
    return [
      {
        headers,
        body: decodeTransfer(message.slice(bodyStart), headers.get('content-transfer-encoding') ?? null)
      }
    ];
  }

  const delimiter = `--${boundary}`;
  const parts: MimePart[] = [];
  let pos = message.indexOf(delimiter, bodyStart);

  while (pos >= 0) {
    const afterDelimiter = pos + delimiter.length;
    if (message.startsWith('--', afterDelimiter)) break; // закрывающая граница

    const lineEnd = message.indexOf('\n', afterDelimiter);
    if (lineEnd < 0) break;

    const partStart = lineEnd + 1;
    const next = message.indexOf(delimiter, partStart);
    let partEnd = next < 0 ? message.length : next;

    // перевод строки перед границей принадлежит границе
    if (partEnd > partStart && message[partEnd - 1] === '\n') partEnd--;
    if (partEnd > partStart && message[partEnd - 1] === '\r') partEnd--;

    const raw = message.slice(partStart, Math.max(partStart, partEnd));
    const parsed = parseHeaders(raw, 0);
    const encoding = parsed.headers.get('content-transfer-encoding') ?? null;
    const ctype = (parsed.headers.get('content-type') ?? '').toLowerCase();

    parts.push({
      headers: parsed.headers,
      body: ctype.startsWith('multipart/')
        ? latin1Bytes(raw)
        : decodeTransfer(raw.slice(parsed.bodyStart), encoding)
    });

    pos = next;
  }

  return parts;
}

/** Заголовки (с учётом переносов строк) и смещение начала тела. */
function parseHeaders(s: string, from: number): { headers: Map<string, string>; bodyStart: number } {
  const headers = new Map<string, string>();
  let i = from;
  let lastKey: string | null = null;

  while (i < s.length) {
    let eol = s.indexOf('\n', i);
    if (eol < 0) eol = s.length;

    const line = s.slice(i, eol).replace(/\r+$/, '');
    i = Math.min(eol + 1, s.length);

    if (line.length === 0) return { headers, bodyStart: i };

    if ((line[0] === ' ' || line[0] === '\t') && lastKey !== null) {
      headers.set(lastKey, `${headers.get(lastKey) ?? ''} ${line.trim()}`);
    } else {
      const colon = line.indexOf(':');
      if (colon <= 0) return { headers, bodyStart: from }; // это не заголовки
      lastKey = line.slice(0, colon).trim().toLowerCase();
      headers.set(lastKey, line.slice(colon + 1).trim());
    }
  }

  return { headers, bodyStart: s.length };
}

function latin1Bytes(s: string): Uint8Array {
  const out = new Uint8Array(s.length);
  for (let i = 0; i < s.length; i++) out[i] = s.charCodeAt(i) & 0xff;
  return out;
}

function decodeTransfer(body: string, encoding: string | null): Uint8Array {
  const enc = (encoding ?? '').trim().toLowerCase();
  if (enc === 'quoted-printable') return decodeQuotedPrintable(body);
  if (enc === 'base64') return decodeBase64(body);
  return latin1Bytes(body);
}

function decodeQuotedPrintable(s: string): Uint8Array {
  const out: number[] = [];
  let i = 0;

  while (i < s.length) {
    const c = s[i]!;
    if (c === '=') {
      if (i + 1 < s.length && s[i + 1] === '\n') {
        i += 2;
        continue;
      }
      if (i + 2 < s.length && s[i + 1] === '\r' && s[i + 2] === '\n') {
        i += 3;
        continue;
      }
      if (i + 2 < s.length) {
        const h1 = hex(s[i + 1]!);
        const h2 = hex(s[i + 2]!);
        if (h1 >= 0 && h2 >= 0) {
          out.push((h1 << 4) | h2);
          i += 3;
          continue;
        }
      }
    }
    out.push(c.charCodeAt(0) & 0xff);
    i++;
  }

  return Uint8Array.from(out);
}

function hex(c: string): number {
  const code = c.charCodeAt(0);
  if (code >= 0x30 && code <= 0x39) return code - 0x30; // 0-9
  if (code >= 0x41 && code <= 0x46) return code - 0x41 + 10; // A-F
  if (code >= 0x61 && code <= 0x66) return code - 0x61 + 10; // a-f
  return -1;
}

/** Свой декодер base64 (как в оригинале — без atob, чтобы поддержать URL-safe). */
function decodeBase64(s: string): Uint8Array {
  const out: number[] = [];
  let buffer = 0;
  let bits = 0;

  for (const c of s) {
    let v: number;
    const code = c.charCodeAt(0);

    if (code >= 0x41 && code <= 0x5a) v = code - 0x41;
    else if (code >= 0x61 && code <= 0x7a) v = code - 0x61 + 26;
    else if (code >= 0x30 && code <= 0x39) v = code - 0x30 + 52;
    else if (c === '+' || c === '-') v = 62;
    else if (c === '/' || c === '_') v = 63;
    else continue;

    buffer = (buffer << 6) | v;
    bits += 6;

    if (bits >= 8) {
      bits -= 8;
      out.push((buffer >> bits) & 0xff);
    }
  }

  return Uint8Array.from(out);
}

// ---------- HTML → текст ----------

const BLOCK_TAGS = new Set([
  'p', 'div', 'br', 'li', 'ul', 'ol', 'tr', 'table', 'hr',
  'h1', 'h2', 'h3', 'h4', 'h5', 'h6',
  'pre', 'blockquote', 'dd', 'dt', 'dl', 'section', 'article',
  'header', 'footer', 'center', 'form'
]);

const NAMED_ENTITIES: Record<string, string> = {
  nbsp: ' ',
  amp: '&',
  lt: '<',
  gt: '>',
  quot: '"',
  apos: "'",
  mdash: '—',
  ndash: '–',
  laquo: '«',
  raquo: '»',
  hellip: '…',
  bdquo: '„',
  ldquo: '“',
  rdquo: '”',
  lsquo: '‘',
  rsquo: '’',
  copy: '©',
  shy: '',
  middot: '·',
  sect: '§',
  deg: '°'
};

/** Для страниц lib.ru берём только само произведение, без меню, оценок и счётчиков. */
function mainRegion(html: string): string {
  const startMarker = /<!--[^>]*Собственно произведение[^>]*-->/.exec(html);
  let from: number;
  if (startMarker) {
    from = startMarker.index + startMarker[0].length;
  } else {
    const body = /<body[^>]*>/i.exec(html);
    from = body ? body.index + body[0].length : 0;
  }
  if (from < 0) from = 0;

  let to = html.length;
  const endMarker = /<!--[^>]*Блок описания произведения \(слева внизу\)[^>]*-->/.exec(
    html.slice(from)
  );
  if (endMarker) {
    to = from + endMarker.index;
  } else {
    const bodyEnd = html.toLowerCase().lastIndexOf('</body');
    if (bodyEnd > from) to = bodyEnd;
  }

  return html.slice(from, to);
}

export function htmlToText(html: string): string {
  const src = mainRegion(html);
  let out = '';
  let inPre = false;
  let i = 0;
  const n = src.length;

  const newline = (): void => {
    while (out.length > 0 && out.endsWith(' ')) out = out.slice(0, -1);
    if (out.length > 0 && !out.endsWith('\n')) out += '\n';
  };

  while (i < n) {
    const c = src[i]!;

    if (c === '<' && src.startsWith('<!--', i)) {
      const end = src.indexOf('-->', i + 4);
      i = end < 0 ? n : end + 3;
      continue;
    }

    if (c === '<' && i + 1 < n && (/[A-Za-z]/.test(src[i + 1]!) || src[i + 1] === '/' || src[i + 1] === '!')) {
      let end = src.indexOf('>', i + 1);
      if (end < 0) end = n - 1;

      const tag = src.slice(i + 1, end);
      const closing = tag.startsWith('/');
      // Имя тега: буквы и цифры до первого пробела или слэша
      let name = '';
      for (const ch of tag.replace(/^\/+/, '')) {
        if (!/[A-Za-z0-9]/.test(ch)) break;
        name += ch;
      }
      name = name.toLowerCase();

      i = end + 1;

      if (!closing && (name === 'script' || name === 'style' || name === 'head')) {
        const re = new RegExp(`</${name}\\s*>`, 'i');
        const close = re.exec(src.slice(i));
        i = close ? i + close.index + close[0].length : n;
      } else if (name === 'pre') {
        inPre = !closing;
        newline();
      } else if (BLOCK_TAGS.has(name)) {
        newline();
      } else if (name === 'td' || name === 'th') {
        if (out.length > 0 && !out.endsWith('\n') && !out.endsWith(' ')) out += ' ';
      }
      continue;
    }

    if (c === '&') {
      const semi = src.indexOf(';', i + 1);
      const decoded =
        semi > i + 1 && semi <= i + 10 ? decodeEntity(src.slice(i + 1, semi)) : null;
      if (decoded !== null) {
        out = appendText(out, decoded, inPre);
        i = semi + 1;
      } else {
        out += '&';
        i++;
      }
      continue;
    }

    out = appendText(out, c, inPre);
    i++;
  }

  return out;
}

function appendText(out: string, s: string, preformatted: boolean): string {
  let result = out;

  for (const ch of s) {
    if (preformatted) {
      result += ch === '\r' ? '\n' : ch;
    } else if (ch === '\n' || ch === '\r' || ch === '\t' || ch === ' ' || ch === '\u00a0') {
      if (result.length > 0 && !result.endsWith(' ') && !result.endsWith('\n')) result += ' ';
    } else {
      result += ch;
    }
  }

  return result;
}

function decodeEntity(name: string): string | null {
  if (name.startsWith('#')) {
    let code: number;
    try {
      code =
        name.length > 1 && (name[1] === 'x' || name[1] === 'X')
          ? parseInt(name.slice(2), 16)
          : parseInt(name.slice(1), 10);
    } catch {
      return null;
    }
    if (!Number.isFinite(code)) return null;
    return code >= 1 && code <= 0x10ffff ? String.fromCodePoint(code) : null;
  }

  return NAMED_ENTITIES[name.toLowerCase()] ?? null;
}

// ---------- общая чистка ----------

/** Единые переводы строк, без лишних пробелов и без более чем одной пустой строки подряд. */
export function normalizeText(text: string): string {
  const clean = text
    .replace(new RegExp(`^${BOM_CHAR}`), '')
    .replace(/\r\n/g, '\n')
    .replace(/\r/g, '\n')
    .replace(/\u00a0/g, ' ');

  const lines = clean.split('\n');
  let sb = '';
  let blank = 0;

  for (const raw of lines) {
    const line = raw.trim().replace(/[ \t]{2,}/g, ' ');

    if (line.length === 0) {
      blank++;
      continue;
    }

    if (sb.length > 0) sb += '\n';
    if (blank > 0 && sb.length > 0) sb += '\n';
    blank = 0;
    sb += line;
  }

  return sb;
}

// ---------- точка входа ----------

/** Превращает содержимое файла в текст. Порт TextLoader.load(). */
export function loadBytes(bytes: Uint8Array): string {
  let text: string;

  if (looksLikeMht(bytes)) {
    text = mhtToText(bytes);
  } else if (looksLikeHtml(bytes)) {
    text = htmlToText(decodeHtml(bytes, null));
  } else {
    text = decode(bytes, null);
  }

  return normalizeText(text);
}

/** Читает File и возвращает готовый к парсингу текст. */
export async function loadFile(file: File): Promise<string> {
  if (file.size > MAX_FILE_BYTES) {
    throw new FileTooLargeError(MAX_FILE_BYTES);
  }

  const buf = await file.arrayBuffer();
  const text = loadBytes(new Uint8Array(buf));

  if (!text.trim()) throw new EmptyTextError();
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

export const TextLoader = {
  loadBytes,
  loadFile,
  loadBuiltinText,
  decode,
  htmlToText,
  normalizeText,
  looksLikeHtml,
  looksLikeMht
};
