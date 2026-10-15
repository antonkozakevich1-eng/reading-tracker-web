"""Smoke-тест этапа 5, часть 3: модель грузится через SpeechEngine приложения.

Проверяет реальный путь: ensureModel() → preloadWithProgress → createModel → KaldiRecognizer.
Микрофон в headless недоступен, поэтому проверяем загрузку модели и создание
распознавателя — это и есть доказательство, что пайплайн Vosk жив.
"""

import sys
from playwright.sync_api import sync_playwright

URL = "http://localhost:5173/"


def main() -> int:
    errors: list[str] = []
    logs: list[str] = []

    with sync_playwright() as p:
        browser = p.chromium.launch()
        page = browser.new_page()

        page.on("pageerror", lambda e: errors.append(str(e)))
        page.on("console", lambda m: logs.append(f"[{m.type}] {m.text}"))

        page.goto(URL, wait_until="domcontentloaded", timeout=60000)
        page.wait_for_timeout(2000)

        print("=== гружу модель через SpeechEngine ===")
        result = page.evaluate(
            """async () => {
                try {
                    const mod = await import('/src/lib/speech/SpeechEngine.ts');
                    const log = [];
                    const engine = new mod.SpeechEngine({
                        onPartial: (t) => log.push('partial:' + t),
                        onFinal: (t) => log.push('final:' + t),
                        onLevel: () => {},
                        onListeningChanged: (v) => log.push('listening:' + v),
                        onError: (m) => log.push('error:' + m),
                        onEngineFailure: (m) => log.push('failure:' + m),
                    });

                    const t0 = performance.now();
                    await engine.ensureModel();
                    const ms = Math.round(performance.now() - t0);

                    return {
                        ok: true,
                        loadMs: ms,
                        modelReady: engine.isModelReady,
                        progress: engine.modelProgress,
                        log,
                    };
                } catch (e) {
                    return { ok: false, error: String(e && e.message ? e.message : e) };
                }
            }"""
        )
        print(result)

        print("\n=== ошибки страницы ===")
        print("\n".join(errors) if errors else "  нет")

        print("\n=== консоль (последние 20) ===")
        for m in logs[-20:]:
            print(" ", m)

        browser.close()

    return 0


if __name__ == "__main__":
    sys.exit(main())
