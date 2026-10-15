/**
 * Определяет по потоку распознанной речи, где в тексте читают, и двигает подсветку **только при уверенности**.
 * Порт TextTracker.kt.
 *
 * Это байесовский фильтр по позиции (скрытая марковская модель): храним распределение вероятностей «читатель
 * прочитал столько-то слов» и режим «читает / пауза». Каждое распознанное слово обновляет распределение:
 *  - совпало со словом текста (нечётко, с прощением окончаний) — вероятность этой позиции растёт тем сильнее,
 *    чем реже слово встречается в тексте: редкое слово — почти доказательство, «и» — почти ничего;
 *  - не совпало — вероятность смещается в состояние «пауза/мусор», подсветка стоит на месте.
 * Поэтому подсветка идёт с каждым распознанным словом, а не ждёт нескольких подряд, но одно слово по-прежнему
 * ничего не значит: сдвиг разрешается только после нескольких подтверждений (needNear и т. д.),
 * чем дальше сдвиг, тем больше нужно подтверждающих слов и тем увереннее должно быть распределение.
 *
 * Слова новой фразы дописываются к тому, что было до паузы, поэтому после паузы подсветка продолжается сразу.
 *
 * Не потокобезопасен.
 */

import type { Doc } from '../text/Doc';
import { Words } from '../text/Words';
import { WordMatcher } from './WordMatcher';
import { NEURAL, searching as makeSearching, type TrackerConfig } from './TrackerConfig';

const PREFIX_SIM = 0.6;
const SIMILAR_CACHE_MAX = 20_000;
const FAR_DELTA = 40;

/** Результат: подсветка сдвинулась с from на to; matched — сколько из последних 8 слов подтвердили место. */
export class Move {
  constructor(
    readonly from: number,
    readonly to: number,
    readonly matched: number
  ) {}

  get delta(): number {
    return this.to - this.from;
  }

  /** Перескок в другое место, а не обычное чтение. */
  get far(): boolean {
    return Math.abs(this.delta) > FAR_DELTA;
  }
}

/**
 * Состояния, отсортированные по позиции: pos — сколько слов прочитано;
 * вероятности «читает» и «пауза».
 */
class Beam {
  constructor(
    readonly pos: Int32Array,
    readonly on: Float64Array,
    readonly off: Float64Array,
    /** История совпадений лучшего пути «читает» в этом состоянии: бит 0 — последнее слово, до 8 слов. */
    readonly hist: Int32Array
  ) {}

  get size(): number {
    return this.pos.length;
  }

  indexOf(p: number): number {
    let lo = 0;
    let hi = this.pos.length - 1;
    while (lo <= hi) {
      const mid = (lo + hi) >>> 1;
      const v = this.pos[mid]!;
      if (v < p) lo = mid + 1;
      else if (v > p) hi = mid - 1;
      else return mid;
    }
    return -1;
  }

  mass(i: number): number {
    return this.on[i]! + this.off[i]!;
  }
}

class Cell {
  constructor(
    public on: number,
    public off: number,
    public bestOn: number,
    public hist: number
  ) {}
}

/** Слова словаря, похожие на распознанное слово, с похожестью, и сколько всего таких мест в тексте. */
class Similar {
  constructor(
    readonly sims: Map<string, number>,
    readonly count: number
  ) {}
}

/** Количество установленных битов в 32-битном числе (Java Integer.bitCount). */
function bitCount(v: number): number {
  let x = v >>> 0;
  x = x - ((x >>> 1) & 0x55555555);
  x = (x & 0x33333333) + ((x >>> 2) & 0x33333333);
  x = (x + (x >>> 4)) & 0x0f0f0f0f;
  return (x * 0x01010101) >>> 24;
}

export class TextTracker {
  private readonly n: number;
  private readonly norm: string[];
  private readonly matcher = new WordMatcher();
  private readonly searchConfig: TrackerConfig;
  private cfg: TrackerConfig;

  /** Режим поиска места: включается сам при потере уверенности и выключается, когда место найдено. */
  private searchModeField = false;

  // «Потерялись»: распознанные слова без подтверждения места.
  private wordsSinceMove = 0; // слов в завершённых фразах
  private phraseWords = 0; // слов в текущей фразе
  private phraseAtMove = 0; // сколько из них было к моменту последнего подтверждения

  /** Вероятность того, что читатель действительно читает рядом с подсветкой (±3 слова), 0..1. */
  private confidenceField: number;

  /** Индекс слова, которое читатель должен произнести следующим (0..doc.size). */
  private positionField = 0;

  // ---------- индексы текста ----------

  private posOfCache: Map<string, Int32Array> | null = null;
  private vocabCache: string[] | null = null;
  private bucketCache: Map<string, string[]> | null = null;
  private readonly similarCache = new Map<string, Similar>();

  // ---------- кэш распределений ----------

  private committed: Beam;
  private cacheWords: string[] = [];
  private readonly cacheBeams: Beam[] = [];

  constructor(
    readonly doc: Doc,
    private readonly baseConfig: TrackerConfig = NEURAL
  ) {
    this.n = doc.size;
    this.norm = doc.norm;
    this.searchConfig = makeSearching(baseConfig);
    this.cfg = baseConfig;
    this.confidenceField = baseConfig.seekOn;
    this.committed = this.single(0);
    this.cacheBeams.push(this.committed);
  }

  get searchMode(): boolean {
    return this.searchModeField;
  }

  private setSearchMode(value: boolean): void {
    this.searchModeField = value;
    this.cfg = value ? this.searchConfig : this.baseConfig;
  }

  /** Сбросить режим поиска (например, когда читатель начал заново или поставил место вручную). */
  stopSearching(): void {
    this.setSearchMode(false);
    this.resetLostCounters();
  }

  private resetLostCounters(): void {
    this.wordsSinceMove = 0;
    this.phraseWords = 0;
    this.phraseAtMove = 0;
  }

  private unconfirmedWords(): number {
    return this.wordsSinceMove + Math.max(0, this.phraseWords - this.phraseAtMove);
  }

  get confidence(): number {
    return this.confidenceField;
  }

  /** Подсветка стоит уверенно (а не «потерялась»). */
  get locked(): boolean {
    return this.confidenceField >= this.baseConfig.lockThreshold;
  }

  get position(): number {
    return this.positionField;
  }

  // ---------- ленивые индексы ----------

  private get posOf(): Map<string, Int32Array> {
    if (this.posOfCache) return this.posOfCache;
    const tmp = new Map<string, number[]>();
    for (let i = 0; i < this.n; i++) {
      const w = this.norm[i]!;
      const list = tmp.get(w);
      if (list) list.push(i);
      else tmp.set(w, [i]);
    }
    const out = new Map<string, Int32Array>();
    for (const [w, l] of tmp) out.set(w, Int32Array.from(l));
    this.posOfCache = out;
    return out;
  }

  private get vocab(): string[] {
    if (this.vocabCache) return this.vocabCache;
    const v = Array.from(this.posOf.keys()).sort();
    this.vocabCache = v;
    return v;
  }

  private get bucket(): Map<string, string[]> {
    if (this.bucketCache) return this.bucketCache;
    const b = new Map<string, string[]>();
    for (const w of this.vocab) {
      const key = w.slice(0, 3);
      const list = b.get(key);
      if (list) list.push(w);
      else b.set(key, [w]);
    }
    this.bucketCache = b;
    return b;
  }

  private similar(r: string, prefix: boolean): Similar {
    const key = prefix ? r + '\u0001' : r;
    const cached = this.similarCache.get(key);
    if (cached) return cached;

    const sims = new Map<string, number>();

    const list = this.bucket.get(r.slice(0, 3));
    if (list) {
      for (const w of list) {
        const s = this.matcher.similarity(r, w);
        if (s > 0.0) sims.set(w, s);
      }
    }

    if (this.posOf.has(r)) sims.set(r, 1.0);

    if (prefix && r.length >= 3) {
      // последнее слово незаконченной фразы может быть ещё не дослушано: «верн» → «верное»
      const vocab = this.vocab;
      let k = this.lowerBound(r);
      while (k < vocab.length && vocab[k]!.startsWith(r)) {
        const w = vocab[k]!;
        sims.set(w, Math.max(sims.get(w) ?? 0.0, PREFIX_SIM));
        k++;
      }
    }

    let cnt = 0;
    for (const w of sims.keys()) cnt += this.posOf.get(w)!.length;

    if (this.similarCache.size > SIMILAR_CACHE_MAX) this.similarCache.clear();

    const out = new Similar(sims, cnt);
    this.similarCache.set(key, out);
    return out;
  }

  private lowerBound(prefix: string): number {
    const vocab = this.vocab;
    let lo = 0;
    let hi = vocab.length;
    while (lo < hi) {
      const mid = (lo + hi) >>> 1;
      if (vocab[mid]! < prefix) lo = mid + 1;
      else hi = mid;
    }
    return lo;
  }

  /** Подготовить индексы заранее (на длинных текстах это заметно). */
  warmUp(): void {
    void this.posOf.size;
    void this.bucket.size;
  }

  // ---------- распределение вероятностей ----------

  private single(at: number): Beam {
    return new Beam(
      Int32Array.from([at]),
      Float64Array.from([this.cfg.seekOn]),
      Float64Array.from([1 - this.cfg.seekOn]),
      Int32Array.from([0])
    );
  }

  /** Поставить позицию вручную (долгое нажатие, оглавление, восстановление). */
  seek(index: number): void {
    this.stopSearching();
    this.positionField = Math.min(Math.max(index, 0), this.n);
    this.committed = this.single(this.positionField);
    this.confidenceField = this.cfg.seekOn;
    this.cacheWords = [];
    this.cacheBeams.length = 0;
    this.cacheBeams.push(this.committed);
  }

  onPartial(text: string): Move | null {
    return this.process(text, false);
  }

  onFinal(text: string): Move | null {
    return this.process(text, true);
  }

  private process(text: string, isFinal: boolean): Move | null {
    if (this.n === 0) return null;

    const words = Words.recognized(text);
    if (words.length === 0) return null;

    const beam = this.statesFor(words, !isFinal);
    const from = this.positionField;
    const newPos = this.decide(beam);

    let move: Move | null = null;
    if (newPos !== null) {
      const idx = beam.indexOf(newPos);
      move = new Move(from, newPos, bitCount(beam.hist[idx]!));
      this.positionField = newPos;
    }

    this.confidenceField = this.readingMassNear(beam, this.positionField);
    this.trackLost(words.length, isFinal, move !== null);

    if (isFinal) {
      this.committed = beam;
      this.cacheWords = [];
      this.cacheBeams.length = 0;
      this.cacheBeams.push(beam);
    }

    return move;
  }

  /** Следит, не потерял ли подсветку читатель: много слов подряд без подтверждения места при низкой уверенности. */
  private trackLost(count: number, isFinal: boolean, moved: boolean): void {
    if (isFinal) {
      if (!moved) this.wordsSinceMove += Math.max(0, count - this.phraseAtMove);
      this.phraseWords = 0;
      this.phraseAtMove = 0;
    } else {
      this.phraseWords = count;
    }

    if (moved) {
      this.wordsSinceMove = 0;
      this.phraseAtMove = this.phraseWords;
      this.setSearchMode(false);
    } else if (!this.searchModeField && !this.locked && this.unconfirmedWords() >= this.baseConfig.lostWords) {
      this.setSearchMode(true);
    } else if (this.searchModeField && this.locked) {
      // уверенность вернулась без сдвига: читатель продолжил с того же места
      this.setSearchMode(false);
    }
  }

  /** Суммарная вероятность «читает» у состояний в ±3 словах от pos. */
  private readingMassNear(beam: Beam, pos: number): number {
    let m = 0.0;
    for (let i = 0; i < beam.size; i++) {
      if (Math.abs(beam.pos[i]! - pos) <= 3) m += beam.on[i]!;
    }
    return m;
  }

  /** Распределение после слов фразы; общий префикс с прошлой гипотезой берётся из кэша. */
  private statesFor(words: string[], partial: boolean): Beam {
    let k = 0;
    while (k < words.length && k < this.cacheWords.length && this.cacheWords[k] === words[k]) k++;
    k = Math.min(k, this.cacheBeams.length - 1);
    if (partial && k >= words.length) k = Math.max(0, words.length - 1);

    while (this.cacheBeams.length > k + 1) this.cacheBeams.pop();

    let beam = this.cacheBeams[k]!;
    for (let idx = k; idx < words.length; idx++) {
      beam = this.step(beam, words[idx]!, partial && idx === words.length - 1);
      this.cacheBeams.push(beam);
    }

    // Недостроенное последнее слово незаконченной фразы в кэш не кладём.
    if (partial) {
      this.cacheWords = words.slice(0, words.length - 1);
      while (this.cacheBeams.length > words.length) this.cacheBeams.pop();
    } else {
      this.cacheWords = words.slice();
    }

    return beam;
  }

  // ---------- один шаг фильтра ----------

  private step(beam: Beam, r: string, lastPartial: boolean): Beam {
    const sim = this.similar(r, lastPartial);
    const acc = new Map<number, Cell>();

    const add = (s: number, on: number, off: number, hist: number): void => {
      if (s < 0 || s > this.n) return;
      const c = acc.get(s);
      if (c === undefined) {
        acc.set(s, new Cell(on, off, on, hist));
      } else {
        c.on += on;
        c.off += off;
        if (on > c.bestOn) {
          c.bestOn = on;
          c.hist = hist;
        }
      }
    };

    const adv = this.cfg.advance;
    const keep = 1 - this.cfg.pReread;

    for (let i = 0; i < beam.size; i++) {
      const j = beam.pos[i]!;
      const on = beam.on[i]!;
      const off = beam.off[i]!;
      const h = beam.hist[i]!;

      if (on > 0) {
        add(j, on * adv[0]!, 0.0, h);
        add(j + 1, on * adv[1]!, 0.0, h);
        add(j + 2, on * adv[2]!, 0.0, h);
        add(j + 3, on * adv[3]!, 0.0, h);
        add(j, 0.0, on * this.cfg.pStop, 0);
      }

      if (off > 0) {
        add(j, 0.0, off * (1 - this.cfg.pStart), 0);
        const st = off * this.cfg.pStart * keep;
        add(j + 1, st * 0.78, 0.0, 0);
        add(j + 2, st * 0.15, 0.0, 0);
        add(j + 3, st * 0.07, 0.0, 0);
      }
    }

    // Широкие переходы (пропуск вперёд, откат, перечитывание, прыжок) — только туда, где совпало наблюдаемое слово:
    // в остальных местах они получили бы лишь «мусорный» множитель и сгинули бы. История совпадений там с нуля.
    if (sim.sims.size > 0 && sim.count <= this.cfg.wideCap && beam.size > 0) {
      const cumOn = new Float64Array(beam.size + 1);
      const cumOff = new Float64Array(beam.size + 1);
      for (let i = 0; i < beam.size; i++) {
        cumOn[i + 1] = cumOn[i]! + beam.on[i]!;
        cumOff[i + 1] = cumOff[i]! + beam.off[i]!;
      }

      const jump = this.cfg.pJump / this.n;
      const skipRate = this.cfg.pSkip / 37;
      const backRate = this.cfg.pBack / 8;
      const rereadRate = (this.cfg.pStart * this.cfg.pReread) / 40;

      for (const w of sim.sims.keys()) {
        const positions = this.posOf.get(w)!;
        for (let pi = 0; pi < positions.length; pi++) {
          const s = positions[pi]! + 1;
          let m = jump;
          m += skipRate * this.rangeSum(beam, cumOn, s - 40, s - 4);
          m += backRate * this.rangeSum(beam, cumOn, s + 1, s + 8);
          m += rereadRate * this.rangeSum(beam, cumOff, s + 1, s + 40);
          add(s, m, 0.0, 0);
        }
      }
    }

    // Наблюдение: «читает» — слово совпадает с текстом с вероятностью rho (чем реже слово, тем весомее),
    // «пауза» — слово случайное.
    const rho = this.cfg.rho;
    const bg = Math.max(Math.max(sim.count, 1) / this.n, this.cfg.backgroundFloor);

    const size = acc.size;
    const ps = new Int32Array(size);
    const ons = new Float64Array(size);
    const offs = new Float64Array(size);
    const hs = new Int32Array(size);

    let total = 0.0;
    let k = 0;

    for (const [s, c] of acc) {
      const sm = s >= 1 ? (sim.sims.get(this.norm[s - 1]!) ?? 0.0) : 0.0;
      const eOn = 1 - rho + (rho * sm) / bg;
      const on2 = c.on * eOn;
      const t = on2 + c.off;
      if (t > 0) {
        ps[k] = s;
        ons[k] = on2;
        offs[k] = c.off;
        hs[k] = ((c.hist << 1) | (sm > 0 ? 1 : 0)) & 0xff;
        total += t;
        k++;
      }
    }

    if (total <= 0 || k === 0) return beam;

    // Нормировка, отсечение слабых состояний и ограничение размера пучка.
    const inv = 1.0 / total;
    let keepCount = 0;
    const idx = new Int32Array(k);

    for (let q = 0; q < k; q++) {
      ons[q] = ons[q]! * inv;
      offs[q] = offs[q]! * inv;
      if (ons[q]! + offs[q]! >= this.cfg.prune) idx[keepCount++] = q;
    }

    if (keepCount === 0) return beam;

    let chosen: number[] = Array.from(idx.slice(0, keepCount));

    if (keepCount > this.cfg.beam) {
      chosen = chosen
        .slice()
        .sort((a, b) => ons[b]! + offs[b]! - (ons[a]! + offs[a]!))
        .slice(0, this.cfg.beam);
    }

    chosen = chosen.slice().sort((a, b) => ps[a]! - ps[b]!);

    let z = 0.0;
    if (keepCount > this.cfg.beam) {
      for (const c of chosen) z += ons[c]! + offs[c]!;
    }
    const scale = z > 0 ? 1.0 / z : 1.0;

    const outPos = new Int32Array(chosen.length);
    const outOn = new Float64Array(chosen.length);
    const outOff = new Float64Array(chosen.length);
    const outHist = new Int32Array(chosen.length);

    for (let i = 0; i < chosen.length; i++) {
      const c = chosen[i]!;
      outPos[i] = ps[c]!;
      outOn[i] = ons[c]! * scale;
      outOff[i] = offs[c]! * scale;
      outHist[i] = hs[c]!;
    }

    return new Beam(outPos, outOn, outOff, outHist);
  }

  /** Сумма по состояниям с позицией в [lo, hi]. */
  private rangeSum(beam: Beam, cum: Float64Array, lo: number, hi: number): number {
    if (hi < lo) return 0.0;

    let a = 0;
    let b = beam.size;
    while (a < b) {
      const mid = (a + b) >>> 1;
      if (beam.pos[mid]! < lo) a = mid + 1;
      else b = mid;
    }
    const left = a;

    a = left;
    b = beam.size;
    while (a < b) {
      const mid = (a + b) >>> 1;
      if (beam.pos[mid]! <= hi) a = mid + 1;
      else b = mid;
    }

    return cum[a]! - cum[left]!;
  }

  // ---------- решение: двигать ли подсветку ----------

  private bestState(beam: Beam): number {
    let best = 0;
    let bestMass = -1.0;
    for (let i = 0; i < beam.size; i++) {
      const m = beam.mass(i);
      if (m > bestMass) {
        bestMass = m;
        best = i;
      }
    }
    return beam.pos[best]!;
  }

  /** Новая позиция подсветки или null, если уверенности нет. */
  private decide(beam: Beam): number | null {
    if (beam.size === 0) return null;

    const s = this.bestState(beam);
    const i = beam.indexOf(s);

    let local = beam.mass(i);
    const iPrev = beam.indexOf(s - 1);
    if (iPrev >= 0) local += beam.mass(iPrev);
    const iNext = beam.indexOf(s + 1);
    if (iNext >= 0) local += beam.mass(iNext);

    const d = s - this.positionField;
    if (d === 0) return null;

    const hist = beam.hist[i]!;
    // последнее слово должно совпасть именно здесь
    if ((hist & 1) === 0) return null;

    const matched = bitCount(hist);
    const ad = Math.abs(d);

    let needMatched: number;
    let needMass: number;

    if (d >= 1 && d <= 2) {
      needMatched = this.cfg.needNear;
      needMass = this.cfg.tauMove;
    } else if (d >= 3 && d <= 10) {
      needMatched = this.cfg.needMid;
      needMass = this.cfg.tauMid;
    } else if (ad <= this.cfg.farAfter) {
      needMatched = this.cfg.needFar;
      needMass = this.cfg.tauMid;
    } else if (ad <= this.cfg.hugeAfter) {
      needMatched = this.cfg.needJump;
      needMass = this.cfg.tauFar;
    } else {
      needMatched = this.cfg.needHuge;
      needMass = this.cfg.tauFar;
    }

    if (d < 0) {
      if (ad <= this.cfg.jitter) return null;
      needMatched = Math.max(needMatched, this.cfg.needFar);
    }

    if (matched < needMatched || local < needMass) return null;
    return s;
  }
}
