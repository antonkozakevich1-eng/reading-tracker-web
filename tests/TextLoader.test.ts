/**
 * Порт TextLoaderTest.kt — 1:1.
 * Источник: alicegpt-original/android/app/src/test/java/com/alicegpt/textfollower/text/TextLoaderTest.kt
 */

import { describe, it, expect } from 'vitest';
import { TextLoader } from '../src/lib/io/TextLoader';

const phrase = 'Синяя лодка плывёт по реке';

/** Кодирует строку в windows-1251. */
function cp1251Bytes(s: string): Uint8Array {
  const out: number[] = [];
  // Обратная таблица: символ → байт
  for (const ch of s) {
    const code = ch.codePointAt(0)!;
    if (code < 0x80) {
      out.push(code);
      continue;
    }
    // Ищем в прямой таблице CP1251_HIGH
    const idx = CP1251_HIGH.indexOf(ch);
    if (idx >= 0) out.push(0x80 + idx);
    else out.push(0x3f); // '?'
  }
  return Uint8Array.from(out);
}

/** Копия таблицы из TextLoader (для обратного кодирования в тесте). */
const CP1251_HIGH =
  '\u0402\u0403\u201a\u0453\u201e\u2026\u2020\u2021\u20ac\u2030\u0409\u2039\u040a\u040c\u040b\u040f' +
  '\u0452\u2018\u2019\u201c\u201d\u2022\u2013\u2014\u0098\u2122\u0459\u203a\u045a\u045c\u045b\u045f' +
  '\u00a0\u040e\u045e\u0408\u00a4\u0490\u00a6\u00a7\u0401\u00a9\u0404\u00ab\u00ac\u00ad\u00ae\u0407' +
  '\u00b0\u00b1\u0406\u0456\u0491\u00b5\u00b6\u00b7\u0451\u2116\u0454\u00bb\u0458\u0405\u0455\u0457' +
  '\u0410\u0411\u0412\u0413\u0414\u0415\u0416\u0417\u0418\u0419\u041a\u041b\u041c\u041d\u041e\u041f' +
  '\u0420\u0421\u0422\u0423\u0424\u0425\u0426\u0427\u0428\u0429\u042a\u042b\u042c\u042d\u042e\u042f' +
  '\u0430\u0431\u0432\u0433\u0434\u0435\u0436\u0437\u0438\u0439\u043a\u043b\u043c\u043d\u043e\u043f' +
  '\u0440\u0441\u0442\u0443\u0444\u0445\u0446\u0447\u0448\u0449\u044a\u044b\u044c\u044d\u044e\u044f';

function utf8Bytes(s: string): Uint8Array {
  return new TextEncoder().encode(s);
}

function latin1Bytes(s: string): Uint8Array {
  const out = new Uint8Array(s.length);
  for (let i = 0; i < s.length; i++) out[i] = s.charCodeAt(i) & 0xff;
  return out;
}

function concat(...parts: Uint8Array[]): Uint8Array {
  const total = parts.reduce((n, p) => n + p.length, 0);
  const out = new Uint8Array(total);
  let off = 0;
  for (const p of parts) {
    out.set(p, off);
    off += p.length;
  }
  return out;
}

describe('TextLoaderTest', () => {
  it('utf8IsDetected', () => {
    expect(TextLoader.loadBytes(utf8Bytes(phrase))).toBe(phrase);
  });

  it('utf8WithBomIsDetected', () => {
    const bytes = concat(Uint8Array.from([0xef, 0xbb, 0xbf]), utf8Bytes(phrase));
    expect(TextLoader.loadBytes(bytes)).toBe(phrase);
  });

  it('windows1251FallsBack', () => {
    expect(TextLoader.loadBytes(cp1251Bytes(phrase))).toBe(phrase);
  });

  it('htmlTagsEntitiesAndScriptsAreStripped', () => {
    const html = [
      '<html><head><title>Заголовок страницы</title><style>p{color:red}</style></head>',
      '<body><script>var x = "не текст";</script>',
      '<p>Первый&nbsp;абзац &mdash; тест &amp; проверка.</p><p>Второй<br>абзац &#1105;&#x436;ик</p><!-- комментарий --></body></html>'
    ].join('\n');

    const text = TextLoader.loadBytes(utf8Bytes(html));
    expect(text).toBe('Первый абзац — тест & проверка.\nВторой\nабзац ёжик');
  });

  it('htmlCharsetComesFromMetaTag', () => {
    const html =
      '<html><head><meta http-equiv="Content-Type" content="text/html; charset=windows-1251"></head>' +
      `<body>${phrase}</body></html>`;
    expect(TextLoader.loadBytes(cp1251Bytes(html))).toBe(phrase);
  });

  it('preformattedTextKeepsLineBreaks', () => {
    const html = '<html><body><pre>\nпервая строка\n[5] вторая строка\n</pre></body></html>';
    expect(TextLoader.loadBytes(utf8Bytes(html))).toBe('первая строка\n[5] вторая строка');
  });

  it('libRuPageKeepsOnlyTheWork', () => {
    const html =
      '<html><body>меню сайта<!--------- Собственно произведение --------->' +
      '<pre>\nПЕСНЬ ПЕРВАЯ\nпервая строка\n<!-------- Блок описания произведения (слева внизу) -------->' +
      '<center>Оценка: шедевр</center></pre></body></html>';
    expect(TextLoader.loadBytes(utf8Bytes(html))).toBe('ПЕСНЬ ПЕРВАЯ\nпервая строка');
  });

  it('mhtWithBinaryPartAndMetaCharset', () => {
    const html = `<html><head><meta charset="windows-1251"></head><body><p>${phrase}</p><p>Вторая строка</p></body></html>`;
    const head =
      'From: <Saved by Blink>\r\nSubject: test\r\nMIME-Version: 1.0\r\n' +
      'Content-Type: multipart/related;\r\n\ttype="text/html";\r\n\tboundary="----Boundary--abc----"\r\n\r\n\r\n';
    const partHead =
      '------Boundary--abc----\r\nContent-Type: text/html\r\nContent-Transfer-Encoding: binary\r\n\r\n';
    const tail =
      '\r\n------Boundary--abc----\r\nContent-Type: image/gif\r\nContent-Transfer-Encoding: binary\r\n\r\nGIF89a\r\n------Boundary--abc------\r\n';

    const bytes = concat(
      latin1Bytes(head),
      latin1Bytes(partHead),
      cp1251Bytes(html),
      latin1Bytes(tail)
    );

    expect(TextLoader.loadBytes(bytes)).toBe(`${phrase}\nВторая строка`);
  });

  it('mhtWithQuotedPrintableUtf8', () => {
    const qp = Array.from(utf8Bytes(phrase))
      .map((b) => {
        if (b < 128 && b !== 0x3d) return String.fromCharCode(b);
        return '=' + b.toString(16).toUpperCase().padStart(2, '0');
      })
      .join('');

    const mht =
      'MIME-Version: 1.0\nContent-Type: multipart/related; boundary="B"\n\n--B\n' +
      'Content-Type: text/html; charset="utf-8"\nContent-Transfer-Encoding: quoted-printable\n\n' +
      `<html><body><p>${qp}</p></body></html>\n--B--\n`;

    expect(TextLoader.loadBytes(latin1Bytes(mht))).toBe(phrase);
  });

  it('mhtWithBase64Part', () => {
    const html = `<html><body><p>${phrase}</p></body></html>`;
    // Аналог Base64.getMimeEncoder() — с переносами строк
    const raw = btoa(String.fromCharCode(...utf8Bytes(html)));
    const b64 = raw.replace(/(.{76})/g, '$1\n');

    const mht =
      'MIME-Version: 1.0\nContent-Type: multipart/related; boundary="B"\n\n--B\n' +
      `Content-Type: text/html; charset=utf-8\nContent-Transfer-Encoding: base64\n\n${b64}\n--B--\n`;

    expect(TextLoader.loadBytes(latin1Bytes(mht))).toBe(phrase);
  });

  it('plainTextIsNotMistakenForMht', () => {
    expect(TextLoader.looksLikeMht(utf8Bytes('Subject: тема\nпросто текст'))).toBe(false);
    expect(TextLoader.looksLikeHtml(utf8Bytes('<!DOCTYPE html><html>'))).toBe(true);
  });

  it('blankLinesAreCollapsed', () => {
    expect(TextLoader.normalizeText('раз\r\n\r\n\r\n\r\n  два  \nтри\n\n')).toBe('раз\n\nдва\nтри');
  });
});
