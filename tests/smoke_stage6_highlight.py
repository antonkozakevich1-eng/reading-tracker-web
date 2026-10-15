"""Smoke-тест этапа 6 (MVP): подсветка идёт за распознаванием.

Микрофона в headless нет, поэтому подаём текст прямо в MainController —
это ровно то, что делает SpeechEngine.onFinal. Проверяем сквозной пайплайн:
текст → TextTracker → позиция в store → подсветка в DOM.
"""

import sys
from playwright.sync_api import sync_playwright

URL = "http://localhost:5173/"

# Первые слова «Одиссеи» (Жуковский), как они есть в тексте
SPOKEN = "муза скажи мне о том многоопытном муже который"


def main() -> int:
    errors: list[str] = []

    with sync_playwright() as p:
        browser = p.chromium.launch()
        page = browser.new_page()
        page.on("pageerror", lambda e: errors.append(str(e)))

        page.goto(URL, wait_until="domcontentloaded", timeout=60000)
        page.wait_for_timeout(4000)  # ждём загрузку «Одиссеи»

        print("=== документ загружен? ===")
        info = page.evaluate(
            """() => {
                const el = document.querySelector('.reader');
                const words = document.querySelectorAll('.word').length;
                return { hasReader: !!el, wordsInView: words };
            }"""
        )
        print(info)

        print("\n=== подаю распознанный текст в контроллер ===")

        # Подаём слова по одному, как это делает Vosk (partial-обновления)
        results = page.evaluate(
            """async (spoken) => {
                const mod = await import('/src/lib/MainController.ts');
                const docMod = await import('/src/lib/text/Doc.ts');
                const storeMod = await import('/src/stores/tracker.ts');

                // Берём «Одиссею» из уже загруженного состояния
                const docStore = await import('/src/stores/document.ts');
                const st = docStore.currentDocument();
                if (!st.doc) return { ok: false, error: 'документ не загружен' };

                const positions = [];
                const ctrl = new mod.MainController({
                    onCursorRendered: () => {},
                    onToast: () => {},
                    onHeardChanged: () => {},
                });
                ctrl.loadDocument(st.doc, 0);

                const words = spoken.split(' ');
                for (let k = 2; k <= words.length; k++) {
                    const phrase = words.slice(0, k).join(' ');
                    ctrl.onSpeechPartial(phrase);
                    positions.push(storeMod.currentTrackerState().currentWord);
                }

                const finalPos = storeMod.currentTrackerState().currentWord;
                return {
                    ok: true,
                    positions,
                    finalPos,
                    expectedWords: words.length,
                    confidence: storeMod.currentTrackerState().confidence,
                    locked: storeMod.currentTrackerState().locked,
                };
            }""",
            SPOKEN,
        )
        print(results)

        print("\n=== подсветка в DOM ===")
        dom = page.evaluate(
            """() => {
                const cursor = document.querySelector('.word.cursor');
                const read = document.querySelectorAll('.word.read').length;
                return {
                    hasCursor: !!cursor,
                    cursorText: cursor ? cursor.textContent : null,
                    readCount: read,
                };
            }"""
        )
        print(dom)

        print("\n=== ошибки страницы ===")
        print("\n".join(errors) if errors else "  нет")

        browser.close()

    return 0


if __name__ == "__main__":
    sys.exit(main())
