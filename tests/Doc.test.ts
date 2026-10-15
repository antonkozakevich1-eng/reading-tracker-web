/**
 * Порт DocTest.kt — 1:1.
 * Источник: alicegpt-original/android/app/src/test/java/com/alicegpt/textfollower/text/DocTest.kt
 */

import { describe, it, expect } from 'vitest';
import { Doc, isHeading } from '../src/lib/text/Doc';

const sample = [
  'ПЕСНЬ ПЕРВАЯ',
  '',
  'Синяя лодка плывёт по реке,',
  'Ёжик собирает яблоки в мешок',
  '[5] Тихий ветер гонит облака.',
  'Ёлка\u0301 стоит у окна.',
  '',
  'ПЕСНЬ ВТОРАЯ',
  '',
  'Новый день встречает город.',
  '[10]Совсем другой берег виден.'
].join('\n');

describe('DocTest', () => {
  it('wordsAreNormalizedAndMarkersIgnored', () => {
    const doc = Doc.parse(sample);
    const words = doc.norm;
    expect(words.slice(0, 5)).toEqual(['синяя', 'лодка', 'плывет', 'по', 'реке']);
    // номер строки не должен быть словом
    expect(words.some((w) => w === '5' || w === '10')).toBe(false);
    expect(words.includes('елка')).toBe(true); // ё→е и ударение убраны
    expect(words.includes('совсем')).toBe(true); // «[10]Совсем» без пробела
  });

  it('markersAreRecordedForGrayDisplay', () => {
    const doc = Doc.parse(sample);
    const ranges = chunked2(Array.from(doc.markerRanges)).map(([a, b]) =>
      doc.text.slice(a, b)
    );
    expect(ranges).toEqual(['[5]', '[10]']);
  });

  it('headingsAreNotWords', () => {
    const doc = Doc.parse(sample);
    expect(doc.norm.includes('песнь')).toBe(false);
    expect(doc.norm.includes('первая')).toBe(false);
    const heads = chunked2(Array.from(doc.headingRanges)).map(([a, b]) =>
      doc.text.slice(a, b)
    );
    expect(heads).toEqual(['ПЕСНЬ ПЕРВАЯ', 'ПЕСНЬ ВТОРАЯ']);
  });

  it('tableOfContentsFollowsHeadings', () => {
    const doc = Doc.parse(sample);
    const toc = doc.sections.filter((s) => s.inToc);
    expect(toc.map((s) => s.title)).toEqual(['Песнь первая', 'Песнь вторая']);
    expect(toc[0]!.firstWord).toBe(0);
    expect(doc.norm[toc[1]!.firstWord]).toBe('новый');
    expect(doc.sectionOfWord(toc[1]!.firstWord)).toBe(1);
    expect(doc.sectionOfWord(3)).toBe(0);
  });

  it('textWithoutHeadingsIsOneSection', () => {
    const doc = Doc.parse('Один два три\nчетыре пять');
    expect(doc.sections.length).toBe(1);
    expect(doc.sections[0]!.title).toBe('Весь текст');
    expect(doc.size).toBe(5);
  });

  it('longChaptersAreSplitButStayInOneTocEntry', () => {
    const line = 'слово слово слово слово слово слово слово слово\n';
    const doc = Doc.parse('ГЛАВА 1\n' + line.repeat(100), 1000);

    expect(doc.sections.length).toBeGreaterThan(3);
    expect(doc.sections.filter((s) => s.inToc).length).toBe(1);
    // секции покрывают весь текст без дыр
    expect(doc.sections[0]!.start).toBe(0);
    expect(doc.sections[doc.sections.length - 1]!.end).toBe(doc.text.length);
    for (let i = 1; i < doc.sections.length; i++) {
      expect(doc.sections[i - 1]!.end).toBe(doc.sections[i]!.start);
    }
    expect(doc.sections[doc.sections.length - 1]!.endWord).toBe(doc.size);
  });

  it('ordinaryLinesAreNotHeadings', () => {
    expect(isHeading('Часть дороги он шёл молча и думал')).toBe(false);
    expect(isHeading('Глава была длинной, и все устали.')).toBe(false);
    expect(isHeading('Песнь XX.')).toBe(false);
    expect(isHeading('Песнь I. Начало пути')).toBe(false);
    expect(isHeading('Глава 12')).toBe(true);
    expect(isHeading('Глава 12.')).toBe(true);
    expect(isHeading('Глава первая')).toBe(true);
    expect(isHeading('   КНИГА ВТОРАЯ  ')).toBe(true);
    expect(isHeading('ПРИМЕЧАНИЯ')).toBe(true);
  });

  it('wordAtOffsetFindsTappedWord', () => {
    const doc = Doc.parse('раз два три');
    expect(doc.wordAtOffset(5)).toBe(1);
    expect(doc.wordAtOffset(10)).toBe(2);
    expect(doc.wordAtOffset(0)).toBe(0);
  });
});

/** Аналог Kotlin chunked(2). */
function chunked2(arr: number[]): [number, number][] {
  const out: [number, number][] = [];
  for (let i = 0; i + 1 < arr.length; i += 2) {
    out.push([arr[i]!, arr[i + 1]!]);
  }
  return out;
}
