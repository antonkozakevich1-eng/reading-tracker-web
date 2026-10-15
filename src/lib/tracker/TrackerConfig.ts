/**
 * Параметры трекера. Подобраны по записям распознавания (см. tools/vosk-experiment).
 * Порт TrackerConfig из TextTracker.kt.
 */

/** Режим поиска места: далёкий перескок принимается по меньшему числу совпавших слов. */
export interface TrackerConfig {
  /** Вероятность, что распознанное слово — это (почти) то, что читают: средняя точность распознавателя. */
  rho: number;
  /** Читатель за одно распознанное слово сдвигается на 0 (повтор), 1, 2, 3 слова. */
  advance: Float64Array;
  /** Читает → пауза/мусор/чужая речь. */
  pStop: number;
  /** Пауза → снова читает. */
  pStart: number;
  /** Откат на 1..8 слов назад (повтор слов). */
  pBack: number;
  /** Пропуск вперёд на 4..40 слов. */
  pSkip: number;
  /** Доля возвращения из паузы, уходящая на перечитывание назад (до 40 слов). */
  pReread: number;
  /** Прыжок в любое место текста. */
  pJump: number;
  /** Нижняя граница «фоновой» вероятности слова: ограничивает силу очень редких слов. */
  backgroundFloor: number;
  /** Состояния с вероятностью ниже порога отбрасываются; в пучке не больше beam состояний. */
  prune: number;
  beam: number;
  /** Слова, у которых больше столько вхождений в текст, не порождают пропуски/перескоки. */
  wideCap: number;
  /** Вероятность «читает» в точке, куда читателя поставили вручную. */
  seekOn: number;

  // Шлюз перед сдвигом подсветки: сколько из последних 8 распознанных слов подтвердили новое место
  // и какая доля вероятности (вокруг лучшей позиции) должна быть на нём.
  needNear: number;
  needMid: number;
  needFar: number;
  needJump: number;
  needHuge: number;
  tauMove: number;
  tauMid: number;
  tauFar: number;
  /** Откаты не дальше стольких слов считаются «передумал распознаватель» и игнорируются. */
  jitter: number;
  /** Границы дальности сдвига, слов. */
  farAfter: number;
  hugeAfter: number;

  // Режим поиска места: далёкий перескок принимается по меньшему числу совпавших слов и при меньшей уверенности.
  /** Подсветка «потеряна», когда вероятность чтения рядом с ней ниже lockThreshold… */
  lockThreshold: number;
  /** …и накопилось столько распознанных слов без подтверждения места: тогда включается поиск. */
  lostWords: number;
  searchNeedFar: number;
  searchNeedJump: number;
  searchNeedHuge: number;
  searchTauFar: number;
  searchJump: number;
}

/** Значения по умолчанию — как у data class TrackerConfig в оригинале. */
export function defaultConfig(overrides: Partial<TrackerConfig> = {}): TrackerConfig {
  return {
    rho: 0.6,
    advance: Float64Array.from([0.0, 0.8, 0.1, 0.03]),
    pStop: 0.04,
    pStart: 0.05,
    pBack: 0.01,
    pSkip: 0.01,
    pReread: 0.05,
    pJump: 3e-4,
    backgroundFloor: 0.0,
    prune: 1e-7,
    beam: 150,
    wideCap: 600,
    seekOn: 0.5,

    needNear: 2,
    needMid: 2,
    needFar: 3,
    needJump: 4,
    needHuge: 6,
    tauMove: 0.5,
    tauMid: 0.8,
    tauFar: 0.97,
    jitter: 2,
    farAfter: 60,
    hugeAfter: 200,

    lockThreshold: 0.25,
    lostWords: 4,
    searchNeedFar: 3,
    searchNeedJump: 3,
    searchNeedHuge: 4,
    searchTauFar: 0.97,
    searchJump: 3e-3,

    ...overrides
  };
}

/**
 * Режим поиска места: читатель ушёл (перескочил или потерялся), нужно быстро найти, где он.
 * Далёкий перескок принимается по меньшему числу совпавших слов.
 */
export function searching(cfg: TrackerConfig): TrackerConfig {
  return {
    ...cfg,
    needFar: Math.min(cfg.needFar, cfg.searchNeedFar),
    needJump: Math.min(cfg.needJump, cfg.searchNeedJump),
    needHuge: Math.min(cfg.needHuge, cfg.searchNeedHuge),
    tauFar: Math.min(cfg.tauFar, cfg.searchTauFar),
    pJump: Math.max(cfg.pJump, cfg.searchJump)
  };
}

/** Для нейросетевого движка. */
export const NEURAL: TrackerConfig = defaultConfig();

/**
 * Для Vosk с ограничением словаря: распознаватель вынужден подбирать слова из окна, поэтому чужая речь
 * и чтение другого места чаще случайно «складываются» в слова текста — шлюз строже.
 */
export const VOSK: TrackerConfig = defaultConfig({
  needNear: 3,
  pJump: 1e-5,
  backgroundFloor: 0.003,
  needHuge: 8
});

export const TrackerConfigDefaults = { NEURAL, VOSK, defaultConfig, searching };
