/**
 * Порт AutoGainTest.kt — 1:1.
 * Источник: alicegpt-original/android/app/src/test/java/com/alicegpt/textfollower/speech/AutoGainTest.kt
 */

import { describe, it, expect } from 'vitest';
import { AutoGain } from '../src/lib/speech/AutoGain';

/** tone(amplitude, n=1600, phase=0) из оригинала. */
function tone(amplitude: number, n = 1600, phase = 0): Int16Array<ArrayBuffer> {
  const out = new Int16Array(new ArrayBuffer(n * 2));
  for (let it = 0; it < n; it++) {
    out[it] = Math.trunc(amplitude * 32767 * Math.sin((2 * Math.PI * 220 * (it + phase)) / 16000.0));
  }
  return out;
}

function rmsOf(b: Int16Array): number {
  let s = 0;
  for (const v of b) s += (v / 32768.0) * (v / 32768.0);
  return Math.sqrt(s / b.length);
}

/** Речь всплесками по полсекунды с паузами шума, как при чтении вслух. */
function feed(g: AutoGain, amplitude: number, seconds: number): Int16Array<ArrayBuffer> {
  let last = new Int16Array(new ArrayBuffer(0));
  let t = 0;

  for (let i = 0; i < seconds * 10; i++) {
    const speaking = i % 8 < 5;
    const b = speaking
      ? tone(amplitude, 1600, t)
      : Int16Array.from({ length: 1600 }, (_, it): number => ((i * 7919 + it * 31) % 9) - 4); // тихий шум

    g.process(b, b.length);
    if (speaking) last = b;
    t += 1600;
  }

  return last;
}

describe('AutoGainTest', () => {
  it('quietSpeechIsBoostedTowardsTarget', () => {
    const g = new AutoGain();
    g.sensitivity = 80;
    const last = feed(g, 0.01, 8);
    expect(rmsOf(last) > 0.04, `после усиления RMS ${rmsOf(last)}`).toBe(true);
  });

  it('veryQuietSpeechIsBoostedToo', () => {
    const g = new AutoGain();
    g.sensitivity = 100;
    const last = feed(g, 0.003, 12);
    expect(rmsOf(last) > 0.02, `после усиления RMS ${rmsOf(last)}`).toBe(true);
  });

  it('higherSensitivityGivesStrongerBoost', () => {
    const lowG = new AutoGain();
    lowG.sensitivity = 10;
    const low = rmsOf(feed(lowG, 0.005, 12));

    const highG = new AutoGain();
    highG.sensitivity = 90;
    const high = rmsOf(feed(highG, 0.005, 12));

    expect(high > low * 2, `низкая ${low}, высокая ${high}`).toBe(true);
  });

  it('loudSignalIsNeverClipped', () => {
    const g = new AutoGain();
    g.sensitivity = 100;
    for (let it = 0; it < 30; it++) {
      const b = tone(0.95, 1600, it * 1600);
      g.process(b, b.length);
      expect(b.every((v) => Math.abs(v) <= 32767)).toBe(true);
    }
  });

  it('silenceStaysQuietAndLevelIsZero', () => {
    const g = new AutoGain();
    g.sensitivity = 100;
    const b = new Int16Array(1600);
    expect(g.process(b, b.length)).toBeCloseTo(0, 3);
    expect(b.every((v) => v === 0)).toBe(true);
  });

  it('levelGrowsWithLoudness', () => {
    const quiet = new AutoGain().process(tone(0.005), 1600);
    const loud = new AutoGain().process(tone(0.3), 1600);
    expect(loud > quiet).toBe(true);
    expect(loud >= 0 && loud <= 1).toBe(true);
  });
});
