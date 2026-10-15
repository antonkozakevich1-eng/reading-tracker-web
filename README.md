# Трекер чтения — веб

Читалка, которая слушает чтение вслух и подсвечивает текущее слово.
Полностью клиент-сайд: распознавание речи идёт **на устройстве**, без сервера и без интернета
после первой загрузки модели.

Веб-порт Android-приложения `com.alicegpt.textfollower`. Логика (разбор текста, поиск места
в тексте байесовским фильтром, нечёткое сравнение слов) перенесена из оригинальных
Kotlin-исходников посимвольно, вместе с тестами.

## Что умеет

- загрузка своих `.txt`, `.html`, `.mht` (определение кодировки: BOM, meta-тег, UTF-8, windows-1251);
- offline-распознавание речи через микрофон (Vosk, модель `vosk-model-small-ru-0.22`);
- подсветка текущего слова, идущая за голосом, с автопрокруткой;
- долгое нажатие на слово — «читаем отсюда»;
- режим поиска: если читающий сбился, приложение само находит место в тексте;
- оглавление по ключевым словам и регексу;
- поиск по тексту с нечётким сравнением (прощаются окончания);
- 5 тем: система, бумага, сепия, тёмная, чёрная (AMOLED);
- шрифт 14–48, засечки, межстрочный интервал 1.1–1.9;
- чувствительность микрофона 0–100;
- статистика: слова, активное время, слов в минуту;
- сохранение позиции чтения для каждого документа;
- встроенный текст по умолчанию — «Одиссея» Жуковского.

## Запуск локально

```bash
npm install
npm run dev
```

Откройте адрес, который напечатает Vite (обычно <http://localhost:5173/>).

Модель речи (~44 МБ) лежит в `public/models/`. При первом запуске она загружается один раз
и кэшируется браузером.

## Сборка

```bash
npm run build      # svelte-check + vite build -> dist/
npm run preview    # посмотреть собранную версию локально
npm test           # тесты (Vitest)
```

## Деплой на Vercel

### Вариант A: через GitHub (рекомендуется)

1. Залить репозиторий на GitHub:
   ```bash
   git remote add origin https://github.com/<user>/<repo>.git
   git push -u origin main
   ```
2. На <https://vercel.com> → **Add New Project** → выбрать репозиторий.
3. Настройки подхватятся из `vercel.json`:
   - Build Command: `npm run build`
   - Output Directory: `dist`
   - Install Command: `npm install`
4. **Deploy**.

### Вариант B: через Vercel CLI

```bash
npm i -g vercel
vercel login
vercel          # превью-деплой
vercel --prod   # продакшен
```

### Заголовки для модели

`vercel.json` отдаёт `/models/*` с `Content-Type: application/gzip` и
`Cache-Control: public, max-age=31536000, immutable`.

Это важно: если сервер применит `Content-Encoding: gzip`, браузер распакует архив
на лету и Vosk получит битые данные. Локально ту же задачу решает плагин
`serveModelRaw` в `vite.config.ts`.

## Требования

- Chrome или Edge (desktop). Firefox — с оговорками, Safari не поддерживается.
- Микрофон. Доступ запрашивается при первом нажатии «Начать».
- HTTPS или `localhost` — иначе браузер не даст доступ к микрофону.

## Структура

```
src/
├── lib/
│   ├── text/      Doc (разбор текста, оглавление, секции), Words (нормализация), TextSearch
│   ├── tracker/   TextTracker (байесовский фильтр), TrackerConfig, WordMatcher
│   ├── speech/    SpeechEngine (Vosk), AudioInput, AutoGain, ContextWords
│   ├── io/        TextLoader (txt/html/mht, кодировки)
│   ├── stats/     SessionStats
│   ├── settings.ts
│   └── MainController.ts
├── components/    Reader, MicButton, Toc, SearchDialog, SettingsPanel, StatsBar
├── stores/        settings, document, tracker
└── styles/        themes.css (5 тем), global.css
```

## Как это работает

`TextTracker` держит распределение вероятностей по позициям в тексте (скрытая марковская
модель). Каждое распознанное слово обновляет распределение: совпало с текстом — вероятность
растёт тем сильнее, чем реже слово встречается; не совпало — уходит в состояние «пауза».

Подсветка сдвигается только при уверенности: чем дальше перескок, тем больше нужно
подтверждающих слов и тем выше должен быть порог вероятности. Если уверенность потеряна и
накопились слова без подтверждения, включается режим поиска по всему тексту.

## Тесты

Портированы из оригинального Android-проекта (`WordsTest`, `WordMatcherTest`, `DocTest`,
`TextTrackerTest`, `AutoGainTest`, `ContextWordsTest`, `SessionStatsTest`, `SettingsTest`,
`TextLoaderTest`) — входные данные и ожидаемые значения перенесены дословно.

```bash
npm test
```

## Лицензия

Распознавание речи — Vosk (`vosk-model-small-ru-0.22`, Apache-2.0), работает на устройстве.
