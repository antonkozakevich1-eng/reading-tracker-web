"""Скриншоты мобильного UI (iPhone 14 Pro) для визуальной проверки."""

import os
import sys
from playwright.sync_api import sync_playwright

BASE = os.environ.get("BASE_URL", "http://localhost:5173/")
OUT = os.path.join(os.path.dirname(__file__), "..", "shots")
os.makedirs(OUT, exist_ok=True)


def main() -> int:
    with sync_playwright() as p:
        browser = p.chromium.launch()
        ctx = browser.new_context(
            viewport={"width": 390, "height": 844},
            device_scale_factor=2,
            is_mobile=True,
            has_touch=True,
        )
        page = ctx.new_page()
        page.goto(BASE, wait_until="domcontentloaded", timeout=60000)
        page.wait_for_timeout(4500)

        def shot(name: str) -> None:
            path = os.path.join(OUT, f"{name}.png")
            page.screenshot(path=path)
            print(f"  {name}.png")

        print("Скриншоты:")
        shot("m01-dark")

        # Светлая тема
        page.evaluate("""async () => (await import('/src/stores/settings.ts')).updateSettings({ theme: 1 })""")
        page.wait_for_timeout(500)
        shot("m02-light")

        # Сепия
        page.evaluate("""async () => (await import('/src/stores/settings.ts')).updateSettings({ theme: 2 })""")
        page.wait_for_timeout(500)
        shot("m03-sepia")

        # Чёрная
        page.evaluate("""async () => (await import('/src/stores/settings.ts')).updateSettings({ theme: 4 })""")
        page.wait_for_timeout(500)
        shot("m04-black")

        # Назад в тёмную
        page.evaluate("""async () => (await import('/src/stores/settings.ts')).updateSettings({ theme: 3 })""")
        page.wait_for_timeout(400)

        # Поповер чувствительности
        page.click('button[aria-label="Чувствительность микрофона"]')
        page.wait_for_timeout(450)
        shot("m05-sensitivity")
        page.click(".reader", position={"x": 100, "y": 200})
        page.wait_for_timeout(300)

        # Drawer оглавления
        page.click('button[aria-label="Оглавление"]')
        page.wait_for_timeout(600)
        shot("m06-toc")
        page.click("aside .row >> nth=0")
        page.wait_for_timeout(500)

        # Поиск — пустой
        page.click('button[aria-label="Поиск"]')
        page.wait_for_timeout(600)
        shot("m07-search-empty")

        # Поиск с результатами
        page.fill(".input", "море")
        page.wait_for_timeout(1000)
        shot("m08-search-results")
        page.click("text=Отмена")
        page.wait_for_timeout(400)

        # Настройки
        page.click('button[aria-label="Настройки"]')
        page.wait_for_timeout(600)
        shot("m09-settings")
        page.keyboard.press("Escape")
        page.wait_for_timeout(400)

        # Прокрученный текст с подсветкой (сдвинем курсор)
        page.evaluate(
            """async () => {
                const docStore = await import('/src/stores/document.ts');
                const s = await import('/src/stores/tracker.ts');
                const st = docStore.currentDocument();
                s.setTrackerState({ currentWord: 120 });
            }"""
        )
        page.wait_for_timeout(700)
        shot("m10-reading")

        browser.close()

    print(f"\nГотово: {os.path.abspath(OUT)}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
