/**
 * Порт TextTrackerTest.kt — 1:1.
 * Источник: alicegpt-original/android/app/src/test/java/com/alicegpt/textfollower/tracking/TextTrackerTest.kt
 *
 * Правила подтверждения позиции на маленьком придуманном тексте и на длинном псевдотексте.
 */

import { describe, it, expect } from 'vitest';
import { Doc } from '../src/lib/text/Doc';
import { TextTracker } from '../src/lib/tracker/TextTracker';
import { PseudoText } from './helpers/PseudoText';

const doc = Doc.parse(
  [
    'Синяя лодка плывёт по тихой реке,',
    'старый мастер чинит деревянный мост.',
    'Холодный ветер приносит запах мокрой травы,',
    'маленькая птица прячется под широким листом.'
  ].join('\n')
);

// Индексы слов: синяя0 лодка1 плывёт2 по3 тихой4 реке5 | старый6 мастер7 чинит8 деревянный9 мост10 |
// холодный11 ветер12 приносит13 запах14 мокрой15 травы16 | маленькая17 птица18 прячется19 под20 широким21 листом22

function tracker(): TextTracker {
  return new TextTracker(doc);
}

describe('TextTrackerTest — подсветка идёт за словами', () => {
  it('oneWordIsNotEnough', () => {
    const t = tracker();
    expect(t.onPartial('синяя')).toBeNull();
    expect(t.onPartial('лодка')).toBeNull();
    expect(t.position).toBe(0);
  });

  it('twoConfirmingWordsMoveTheHighlightAtOnce', () => {
    const t = tracker();
    const move = t.onPartial('синяя лодка');
    expect(move).not.toBeNull();
    expect(t.position).toBe(2);
    expect(move!.from).toBe(0);
    expect(move!.delta).toBe(2);
    expect(move!.far).toBe(false);
  });

  it('highlightFollowsEveryNewWordOfAGrowingPhrase', () => {
    const t = tracker();
    const spoken = 'синяя лодка плывет по тихой реке старый мастер'.split(' ');
    for (let k = 2; k <= spoken.length; k++) {
      t.onPartial(spoken.slice(0, k).join(' '));
      expect(t.position, `после ${k} слов`).toBe(k);
    }
  });

  it('finalResultOfTheSamePhraseDoesNotMoveItAgain', () => {
    const t = tracker();
    t.onPartial('синяя лодка плывет по тихой реке');
    expect(t.onFinal('синяя лодка плывет по тихой реке')).toBeNull();
    expect(t.position).toBe(6);
  });

  it('skipOfSeveralWordsNeedsMoreConfirmation', () => {
    const t = tracker();
    // «старый» — седьмое слово: перескок на шесть слов вперёд двух слов недостаточно
    expect(t.onPartial('старый мастер')).toBeNull();
    expect(t.position).toBe(0);
    expect(t.onPartial('старый мастер чинит')).toBeNull();
    expect(t.position).toBe(0);
    expect(t.onPartial('старый мастер чинит деревянный')).not.toBeNull();
    expect(t.position).toBe(10); // следующее слово — «мост»
  });

  it('shortWordInTheTailIsFine', () => {
    const t = tracker();
    t.onPartial('синяя лодка плывет по');
    expect(t.position).toBe(4);
    t.onPartial('синяя лодка плывет по тихой');
    expect(t.position).toBe(5);
  });

  it('lastWordOfAnUnfinishedPhraseMatchesByPrefix', () => {
    const t = tracker();
    t.onPartial('синяя лодка плывет по тих'); // «тихой» ещё не дослушано
    expect(t.position).toBe(5);
  });
});

describe('TextTrackerTest — ошибки распознавателя прощаются', () => {
  it('wrongEndingsAreForgiven', () => {
    const t = tracker();
    t.onPartial('синяя лодки плывет по тихая');
    expect(t.position).toBe(5);
  });

  it('oneJunkWordInsideIsForgiven', () => {
    const t = tracker();
    t.onPartial('синяя лодка ну плывет по тихой реке');
    expect(t.position).toBe(6);
  });

  it('oneSkippedWordIsForgiven', () => {
    const t = tracker();
    t.onPartial('синяя лодка по тихой реке'); // «плывёт» не распознано
    expect(t.position).toBe(6);
  });

  it('junkAtTheEndKeepsThePosition', () => {
    const t = tracker();
    t.onPartial('синяя лодка плывет по тихой');
    expect(t.position).toBe(5);
    expect(t.onPartial('синяя лодка плывет по тихой хм')).toBeNull();
    expect(t.position).toBe(5);
  });

  it('junkInTheMiddleCostsAtMostOneWord', () => {
    const t = tracker();
    // распознаватель присылает фразу по слову
    const spoken = 'синяя лодка плывет по тихой хм реке старый мастер'.split(' ');
    const seen: number[] = [];
    for (let k = 2; k <= spoken.length; k++) {
      t.onPartial(spoken.slice(0, k).join(' '));
      seen.push(t.position);
    }
    // после «хм» подсветка стоит на «реке», после «реке» — не дальше чем на слово позади
    expect(seen[spoken.indexOf('хм') - 2], `позиции ${seen}`).toBe(5);
    const atReke = seen[spoken.indexOf('реке') - 2]!;
    expect(atReke >= 5 && atReke <= 6, `позиции ${seen}`).toBe(true);
    expect(seen[seen.length - 1], `позиции ${seen}`).toBe(8);
  });

  it('repeatedLongWordDoesNotRunAhead', () => {
    const t = tracker();
    t.onPartial('синяя лодка плывет по тихой реке');
    expect(t.position).toBe(6);
    t.onPartial('синяя лодка плывет по тихой реке реке'); // заикание
    expect(t.position).toBe(6);
  });

  it('garbageDoesNotMoveHighlight', () => {
    const t = tracker();
    t.onPartial('синяя лодка плывет по тихой реке');
    const pos = t.position;
    const junkList = [
      'а',
      'ну да',
      'кхм кхм кхм',
      'и в на не',
      'один два три четыре пять',
      '[unk] [unk] [unk]'
    ];
    for (const junk of junkList) {
      expect(t.onPartial(junk), junk).toBeNull();
      expect(t.onFinal(junk), junk).toBeNull();
    }
    expect(t.position).toBe(pos);
  });

  it('foreignSpeechWithSimilarLengthDoesNotMove', () => {
    const t = tracker();
    t.onPartial('синяя лодка плывет по тихой реке');
    const pos = t.position;
    expect(t.onPartial('холодный день завтра обещают дождь без ветра')).toBeNull();
    expect(t.position).toBe(pos);
  });
});

describe('TextTrackerTest — паузы и фразы', () => {
  it('continuesAfterPauseWithoutWaitingForNewWords', () => {
    const t = tracker();
    t.onPartial('синяя лодка плывет по тихой реке');
    t.onFinal('синяя лодка плывет по тихой реке');
    expect(t.position).toBe(6);
    // пауза; новая фраза с одного слова — хвост предыдущей фразы подтверждает позицию
    t.onPartial('старый');
    expect(t.position).toBe(7);
    t.onPartial('старый мастер');
    expect(t.position).toBe(8);
  });

  it('partialRevisionsDoNotJitterBackwards', () => {
    const t = tracker();
    t.onPartial('синяя лодка плывет по тихой реке старый');
    expect(t.position).toBe(7);
    // распознаватель «передумал» насчёт последнего слова
    t.onPartial('синяя лодка плывет по тихой реке');
    expect(t.position).toBe(7);
  });

  it('seekResetsContext', () => {
    const t = tracker();
    t.onFinal('синяя лодка плывет по тихой реке');
    t.seek(15);
    expect(t.position).toBe(15);
    expect(t.onPartial('старый')).toBeNull();
    expect(t.position).toBe(15);
  });

  it('seekIsClampedToTheText', () => {
    const t = tracker();
    t.seek(-5);
    expect(t.position).toBe(0);
    t.seek(10000);
    expect(t.position).toBe(doc.size);
  });

  it('emptyTextNeverMoves', () => {
    const t = new TextTracker(Doc.parse(''));
    expect(t.onPartial('синяя лодка')).toBeNull();
    expect(t.onFinal('синяя лодка')).toBeNull();
    expect(t.position).toBe(0);
  });
});

describe('TextTrackerTest — уверенность', () => {
  it('confidenceFallsOnGarbageAndComesBackWithText', () => {
    const t = tracker();
    t.onPartial('синяя лодка плывет по тихой реке');
    t.onFinal('синяя лодка плывет по тихой реке');
    expect(t.locked).toBe(true);
    expect(t.confidence > 0.9).toBe(true);

    t.onFinal('кхм кхм кхм');
    t.onFinal('один два три четыре пять');
    expect(t.locked, `уверенность ${t.confidence}`).toBe(false);
    expect(t.position).toBe(6);

    t.onPartial('старый мастер чинит');
    expect(t.locked, `уверенность ${t.confidence}`).toBe(true);
    expect(t.position).toBe(9);
  });
});

describe('TextTrackerTest — перескоки на длинном тексте', () => {
  const big = PseudoText.doc(11, 700);

  /** Первое место не раньше from, где len слов подряд достаточно длинные и разные. */
  function pick(from: number, len = 8): number {
    let i = from;
    for (;;) {
      const w: string[] = [];
      for (let k = i; k < i + len; k++) w.push(big.norm[k]!);
      const allLong = w.every((x) => x.length >= 4);
      const distinct = new Set(w).size === len;
      const rare = w.every((x) => big.norm.filter((y) => y === x).length <= 8);
      if (allLong && distinct && rare) return i;
      i++;
    }
  }

  function spoken(from: number, count: number): string {
    const out: string[] = [];
    for (let k = from; k < from + count; k++) out.push(big.norm[k]!);
    return out.join(' ');
  }

  /** Читатель замолчал по делу: много слов мимо текста подряд — трекер сам переходит в режим поиска. */
  function lose(t: TextTracker): void {
    t.onFinal('кхм ну это самое да кхм ага да так');
    expect(t.searchMode, 'режим поиска должен включиться').toBe(true);
  }

  /** Сколько слов с места from надо произнести, чтобы подсветка перешла туда с позиции start; null — не дошла. */
  function wordsNeeded(start: number, from: number, searching: boolean, max = 12): number | null {
    const t = new TextTracker(big);
    t.seek(start);
    if (searching) lose(t);
    for (let k = 1; k <= max; k++) {
      t.onPartial(spoken(from, k));
      if (t.position === from + k) return k;
      if (t.position !== start) {
        throw new Error(`позиция ушла не туда: ${t.position}, слов: ${k}`);
      }
    }
    return null;
  }

  it('nearSkipNeedsFewWordsFarJumpNeedsMore', () => {
    const near = pick(250);
    const far = pick(3000);
    const nearWords = wordsNeeded(100, near, false);
    const farWords = wordsNeeded(100, far, false);
    expect(nearWords, 'до ближнего места не дошли').not.toBeNull();
    expect(farWords, 'до дальнего места не дошли').not.toBeNull();
    expect(nearWords! >= 2 && nearWords! <= 4, `ближний: ${nearWords}`).toBe(true);
    expect(farWords! >= 4 && farWords! <= 8, `дальний: ${farWords}`).toBe(true);
    expect(farWords! > nearWords!, 'дальнее место должно требовать больше слов').toBe(true);
  });

  it('farJumpBackwardAlsoNeedsSeveralWords', () => {
    const start = pick(500);
    const words = wordsNeeded(3000, start, false);
    expect(words).not.toBeNull();
    expect(words! >= 4 && words! <= 8, `слов: ${words}`).toBe(true);
  });

  it('searchModeFindsTheNewPlaceFaster', () => {
    const far = pick(3000);
    const normal = wordsNeeded(100, far, false)!;
    const search = wordsNeeded(100, far, true)!;
    expect(search < normal, `обычный: ${normal}, поиск: ${search}`).toBe(true);
    expect(search <= 4, `в режиме поиска слов: ${search}`).toBe(true);
  });

  it('searchModeDoesNotTakeGarbageForAPlace', () => {
    const t = new TextTracker(big);
    t.seek(1000);
    lose(t);
    const junkList = ['а', 'ну да', 'кхм кхм кхм', 'и в на не', 'один два три четыре пять'];
    for (const junk of junkList) {
      expect(t.onPartial(junk), junk).toBeNull();
      expect(t.onFinal(junk), junk).toBeNull();
    }
    expect(t.position).toBe(1000);
  });

  it('searchStartsOnlyAfterSeveralUnconfirmedWordsAndEndsWithAMove', () => {
    const t = new TextTracker(big);
    const at = pick(300, 6);
    t.seek(at);
    t.onPartial(spoken(at, 6));
    t.onFinal(spoken(at, 6));
    expect(t.searchMode).toBe(false);
    // пара лишних слов — ещё не «ушёл»
    t.onFinal('кхм ну');
    expect(t.searchMode).toBe(false);
    // много слов мимо текста — ушёл
    t.onFinal('это самое да так вот ага');
    expect(t.searchMode).toBe(true);
    expect(t.locked).toBe(false);
    // стоило прочитать пару слов оттуда, где остановились, — поиск закончился
    t.onPartial(spoken(at + 6, 3));
    expect(t.searchMode).toBe(false);
    expect(t.position).toBe(at + 9);
  });

  it('seekAndStopSearchingLeaveSearchMode', () => {
    const t = new TextTracker(big);
    t.seek(500);
    lose(t);
    t.seek(700);
    expect(t.searchMode).toBe(false);
    lose(t);
    t.stopSearching();
    expect(t.searchMode).toBe(false);
    // и счёт слов начался заново: пары слов мимо текста для поиска мало
    t.onFinal('кхм ну');
    expect(t.searchMode).toBe(false);
  });

  it('commonWordsAloneDoNotMakeALongJump', () => {
    const t = new TextTracker(big);
    t.seek(1000);
    t.onPartial('и в на не');
    expect(Math.abs(t.position - 1000) <= 8, `позиция ${t.position}`).toBe(true);
    t.onFinal('и в на не как что она то там так');
    expect(Math.abs(t.position - 1000) <= 40, `позиция ${t.position}`).toBe(true);
  });

  it('reReadingFewWordsBackIsFollowedAfterConfirmation', () => {
    const t = new TextTracker(big);
    t.seek(400);
    const start = pick(340, 5);
    expect(start + 5 < 398 && 400 - start < 60, 'слишком далеко назад').toBe(true);
    t.onPartial(spoken(start, 2));
    expect(t.position).toBe(400);
    t.onPartial(spoken(start, 5));
    expect(t.position).toBe(start + 5);
  });

  it('smallStepBackIsIgnoredAsRecognizerNoise', () => {
    const t = new TextTracker(big);
    const at = pick(200, 6);
    t.seek(at);
    t.onPartial(spoken(at, 6));
    expect(t.position).toBe(at + 6);
    // распознаватель переставил слова: позиция на 1–2 слова назад — это не перечитывание
    t.onPartial(spoken(at, 5));
    expect(t.position).toBe(at + 6);
  });
});
