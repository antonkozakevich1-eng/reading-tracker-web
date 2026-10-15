"""Smoke-тест этапа 6: перескок (долгое нажатие) и автопрокрутка."""

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

        print("=== 1. перескок через seekToWord ===")
        seek = page.evaluate(
            """async () => {
                const storeMod = await import('/src/stores/tracker.ts');
                const before = storeMod.currentTrackerState().currentWord;

                // Ищем контроллер в приложении через прямой вызов
                // (в Svelte он локальный, поэтому проверяем через DOM-реакцию)
                return { before };
            }"""
        )
        print(seek)

        print("\n=== 2. клик по слову и долгое нажатие ===")
        # Берём 20-е слово и жмём на него 600 мс
        result = page.evaluate(
            """async () => {
                const words = document.querySelectorAll('.word');
                if (words.length < 30) return { ok: false, error: 'мало слов' };

                const target = words[20];
                const text = target.textContent;

                const rect = target.getBoundingClientRect();
                const x = rect.left + rect.width / 2;
                const y = rect.top + rect.height / 2;

                target.dispatchEvent(new PointerEvent('pointerdown', {
                    bubbles: true, button: 0, clientX: x, clientY: y,
                }));

                await new Promise((r) => setTimeout(r, 650));

                const cursor = document.querySelector('.word.cursor');
                return {
                    ok: true,
                    clickedText: text,
                    cursorText: cursor ? cursor.textContent : null,
                    cursorIsTarget: cursor === target,
                };
            }"""
        )
        print(result)

        print("\n=== 3. автопрокрутка: прокручиваем вручную, ждём реакции ===")
        scroll = page.evaluate(
            """async () => {
                const el = document.querySelector('.reader');
                if (!el) return { ok: false, error: 'нет .reader' };

                const startScroll = el.scrollTop;

                // Ручная прокрутка вниз
                el.scrollTop = 2000;
                el.dispatchEvent(new Event('scroll'));
                const afterManual = el.scrollTop;

                return {
                    ok: true,
                    startScroll,
                    afterManual,
                    scrollable: el.scrollHeight > el.clientHeight,
                    scrollHeight: el.scrollHeight,
                    clientHeight: el.clientHeight,
                };
            }"""
        )
        print(scroll)

        print("\n=== 4. подсветка после перескока ===")
        after = page.evaluate(
            """() => {
                const cursor = document.querySelector('.word.cursor');
                const read = document.querySelectorAll('.word.read').length;
                return {
                    cursorText: cursor ? cursor.textContent : null,
                    readCount: read,
                };
            }"""
        )
        print(after)

        print("\n=== ошибки ===")
        print("\n".join(errors) if errors else "  нет")

        browser.close()

    return 0


if __name__ == "__main__":
    sys.exit(main())
