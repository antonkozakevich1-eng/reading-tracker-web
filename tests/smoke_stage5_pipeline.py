"""Smoke-тест этапа 5, часть 5: session-механизм.

Проверяем главное требование: после stop() колбэки старого запуска
дропаются (порт post() из StreamingEngine).
"""

import sys
from playwright.sync_api import sync_playwright

URL = "http://localhost:5173/"


def main() -> int:
    errors: list[str] = []

    with sync_playwright() as p:
        browser = p.chromium.launch(
            args=[
                "--use-fake-ui-for-media-stream",
                "--use-fake-device-for-media-stream",
                "--autoplay-policy=no-user-gesture-required",
            ]
        )
        context = browser.new_context(permissions=["microphone"])
        page = context.new_page()
        page.on("pageerror", lambda e: errors.append(str(e)))

        page.goto(URL, wait_until="domcontentloaded", timeout=60000)
        page.wait_for_timeout(1500)

        print("=== проверяю дроп колбэков после stop() ===")
        result = page.evaluate(
            """async () => {
                const events = [];
                const mod = await import('/src/lib/speech/SpeechEngine.ts');
                const engine = new mod.SpeechEngine({
                    onPartial: (t) => events.push(['partial', t]),
                    onFinal: (t) => events.push(['final', t]),
                    onLevel: (l) => events.push(['level', l]),
                    onListeningChanged: (v) => events.push(['listening', v]),
                    onError: (m) => events.push(['error', m]),
                    onEngineFailure: (m) => events.push(['failure', m]),
                });

                await engine.start();
                await new Promise((r) => setTimeout(r, 2500));

                // Момент остановки
                const beforeStop = events.length;
                engine.stop();

                // Ждём: если session-механизм сломан, сюда прилетят level/partial
                await new Promise((r) => setTimeout(r, 2500));
                const afterStop = events.length;
                const leaked = events.slice(beforeStop);

                // Считаем только «шумные» события: listening:false — легитимное
                const leakedNoise = leaked.filter(
                    (e) => e[0] === 'level' || e[0] === 'partial' || e[0] === 'final'
                );

                // Повторный старт должен работать
                await engine.start();
                await new Promise((r) => setTimeout(r, 1500));
                const restarted = engine.isRunning;
                engine.stop();

                return {
                    ok: true,
                    eventsBeforeStop: beforeStop,
                    eventsAfterStop: afterStop,
                    leakedTotal: leaked.length,
                    leakedNoise: leakedNoise.length,
                    leakedSample: leaked.slice(0, 5),
                    restartWorked: restarted,
                };
            }"""
        )
        print(result)

        print("\n=== ошибки страницы ===")
        print("\n".join(errors) if errors else "  нет")

        browser.close()

    return 0


if __name__ == "__main__":
    sys.exit(main())
