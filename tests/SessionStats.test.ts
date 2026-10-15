/**
 * Порт SessionStatsTest.kt — 1:1.
 * Источник: alicegpt-original/android/app/src/test/java/com/alicegpt/textfollower/SessionStatsTest.kt
 */

import { describe, it, expect } from 'vitest';
import { SessionStats } from '../src/lib/stats/SessionStats';

describe('SessionStatsTest', () => {
  let now = 1_000_000;
  const stats = new SessionStats(() => now);

  // Тесты в оригинале используют одно общее состояние и порядок JUnit,
  // поэтому сбрасываем счётчики перед каждым — иначе время накапливается
  // между кейсами. Поведение каждого теста при этом не меняется.
  function fresh(): SessionStats {
    now = 1_000_000;
    stats.reset();
    // reset() сохраняет runningSince, если шло прослушивание — гасим явно
    if (stats.isRunning) stats.pause();
    stats.reset();
    return stats;
  }

  it('timeCountsOnlyWhileListening', () => {
    const s = fresh();
    s.start();
    now += 10_000;
    s.pause();
    now += 50_000; // пауза
    expect(s.activeMillis).toBe(10_000);
    s.start();
    now += 5_000;
    expect(s.activeMillis).toBe(15_000);
  });

  it('wordsPerMinuteOverTheWholeSessionAtFirst', () => {
    const s = fresh();
    s.start();
    for (let i = 0; i < 10; i++) {
      now += 3_000;
      s.onForwardMove(5);
    }
    // 50 слов за 30 секунд
    expect(s.wordsRead).toBe(50);
    expect(s.wordsPerMinute()).toBe(100);
  });

  it('wordsPerMinuteUsesTheLastMinuteLater', () => {
    const s = fresh();
    s.start();
    for (let i = 0; i < 60; i++) {
      now += 1_000;
      s.onForwardMove(1); // первая минута: 60 слов/мин
    }
    for (let i = 0; i < 60; i++) {
      now += 1_000;
      if (i % 2 === 0) s.onForwardMove(1); // вторая: 30 слов/мин
    }
    const wpm = s.wordsPerMinute();
    expect(wpm >= 29 && wpm <= 32, `слов/мин ${wpm}`).toBe(true);
  });

  it('jumpsAndBackwardMovesAreNotReading', () => {
    const s = fresh();
    s.start();
    now += 10_000;
    s.onForwardMove(500); // перескок
    s.onForwardMove(-20); // перечитывание
    s.onForwardMove(0);
    expect(s.wordsRead).toBe(0);
    expect(s.wordsPerMinute()).toBe(0);
  });

  it('resetClearsEverything', () => {
    const s = fresh();
    s.start();
    now += 10_000;
    s.onForwardMove(10);
    s.reset();
    expect(s.wordsRead).toBe(0);
    expect(s.activeMillis).toBe(0);
  });
});
