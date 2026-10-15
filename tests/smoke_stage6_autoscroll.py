"""Smoke-тест этапа 6: пауза автопрокрутки 4000 мс после касания.

Порт условия из ReaderView.kt:
    if (!force && (!autoScroll || now - lastUserTouch < USER_SCROLL_PAUSE_MS)) return
"""

import sys
from playwright.sync_api import sync_playwright

URL = "http://localhost:5173/"


def main() -> int:
    errors: list[str] = []

    with sync_playwright() as p:
        browser = p.chromium.launch()
        page = browser.new_page(viewport={"width": 900, "height": 700})
        page.on("pageerror", lambda e: errors.append(str(e)))

        page.goto(URL, wait_until="domcontentloaded", timeout=60000)
        page.wait_for_timeout(4000)

        print("=== пауза после ручного скролла ===")
        result = page.evaluate(
            """async () => {
                const docStore = await import('/src/stores/document.ts');
                const ctrlMod = await import('/src/lib/MainController.ts');
                const storeMod = await import('/src/stores/tracker.ts');

                const st = docStore.currentDocument();
                if (!st.doc) return { ok: false, error: 'нет документа' };

                const ctrl = new ctrlMod.MainController({
                    onCursorRendered: () => {},
                    onToast: () => {},
                    onHeardChanged: () => {},
                });
                ctrl.loadDocument(st.doc, 0);

                // Начинаем читать
                ctrl.onSpeechPartial('муза скажи мне о том');
                await new Promise((r) => setTimeout(r, 100));

                const el = document.querySelector('.reader');
                const before = el.scrollTop;

                // Пользователь прокрутил вручную (эмулируем касание)
                el.dispatchEvent(new WheelEvent('wheel', { bubbles: true }));
                el.scrollTop = 3000;
                await new Promise((r) => setTimeout(r, 100));
                const afterManual = el.scrollTop;

                // Читаем дальше — автопрокрутка должна МОЛЧАТЬ (прошло < 4 с)
                ctrl.onSpeechPartial('муза скажи мне о том многоопытном муже который странствуя');
                await new Promise((r) => setTimeout(r, 600));
                const duringPause = el.scrollTop;

                return {
                    ok: true,
                    before,
                    afterManual,
                    duringPause,
                    pausedOk: Math.abs(duringPause - afterManual) < 50,
                };
            }"""
        )
        print(result)

        print("\n=== ошибки ===")
        print("\n".join(errors) if errors else "  нет")

        browser.close()

    return 0


if __name__ == "__main__":
    sys.exit(main())
