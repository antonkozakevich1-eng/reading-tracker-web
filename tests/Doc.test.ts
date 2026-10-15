/**
 * Проверка порта текстового слоя на настоящей «Одиссее».
 * Запуск: npx vitest run tests/Doc.test.ts
 */

import { describe, it, expect } from 'vitest';
import { readFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { Doc, isHeading } from '../src/lib/text/Doc';
import { Words } from '../src/lib/text/Words';

const odysseyPath = resolve(__dirname, '../public/odyssey_zhukovsky.txt');
const odyssey = readFileSync(odysseyPath, 'utf8');

describe('Words', () => {
  it('приводит ё к е', () => {
    expect(Words.normalize('Ёлка')).toBe('елка');
    expect(Words.normalize('поёт')).toBe('поет');
  });

  it('сохраняет ё в spelled', () => {
    expect(Words.spelled('Ёлка')).toBe('ёлка');
  });

  it('снимает знаки ударения', () => {
    // «а» + U+0301 (COMBINING ACUTE ACCENT)
    expect(Words.normalize('а\u0301')).toBe('а');
  });

  it('выбрасывает [unk]', () => {
    expect(Words.recognized('привет [unk] мир')).toEqual(['привет', 'мир']);
  });

  it('режет по границам слов', () => {
    expect(Words.recognized('Муза, скажи мне!')).toEqual(['муза', 'скажи', 'мне']);
  });
});

describe('Doc.parse на «Одиссее»', () => {
  const doc = Doc.parse(odyssey);

  it('находит слова', () => {
    expect(doc.size).toBeGreaterThan(100000);
  });

  it('строит секции', () => {
    expect(doc.sections.length).toBeGreaterThan(1);
  });

  it('находит заголовки «ПЕСНЬ ...»', () => {
    const toc = doc.sections.filter((s) => s.inToc && s.title.length > 0);
    const песни = toc.filter((s) => /песнь/i.test(s.title));
    // В «Одиссее» 24 песни
    expect(песни.length).toBeGreaterThanOrEqual(20);
  });

  it('заголовок «ПЕСНЬ ПЕРВАЯ» распознан', () => {
    expect(isHeading('ПЕСНЬ ПЕРВАЯ')).toBe(true);
  });

  it('обычная строка стиха — не заголовок', () => {
    expect(isHeading('Муза, скажи мне о том многоопытном муже, который,')).toBe(false);
  });

  it('номера стихов [5] не попадают в слова', () => {
    // В норме не должно быть чисел из маркеров
    const hasBracketNumber = doc.norm.some((w) => /^\[?\d+\]?$/.test(w));
    expect(hasBracketNumber).toBe(false);
  });

  it('маркеры стихов найдены', () => {
    expect(doc.markerRanges.length).toBeGreaterThan(0);
  });

  it('первое слово — «муза»', () => {
    expect(doc.norm[0]).toBe('муза');
  });

  it('sectionOfWord согласован с границами секций', () => {
    for (const s of doc.sections.slice(0, 50)) {
      if (s.endWord > s.firstWord) {
        const idx = doc.sectionOfWord(s.firstWord);
        expect(doc.sections[idx]!.firstWord).toBeLessThanOrEqual(s.firstWord);
      }
    }
  });

  it('wordAtOffset возвращает слово, содержащее смещение', () => {
    const w = 1000;
    const offset = doc.wordStart[w]!;
    expect(doc.wordAtOffset(offset)).toBe(w);
  });

  it('секции покрывают весь текст без пропусков', () => {
    for (let i = 1; i < doc.sections.length; i++) {
      expect(doc.sections[i]!.start).toBe(doc.sections[i - 1]!.end);
    }
  });
});
