"""Скриншоты трёх исправлений."""

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
        # Ждём, пока отрисуется панель
        page.wait_for_selector(".mic", timeout=15000)

        def shot(name: str) -> None:
            path = os.path.join(OUT, f"{name}.png")
            page.screenshot(path=path)
            print(f"  {name}.png")

        print("Скриншоты:")

        # 1. Микрофон в состоянии записи (пульсация CSS)
        page.evaluate(
            """() => {
                const btn = document.querySelector('.mic');
                if (!btn) return;
                btn.classList.add('listening');
            }"""
        )
        page.wait_for_timeout(500)
        shot("f01-mic-pulse")

        # Снимок середины анимации — чтобы кольцо было видно
        page.wait_for_timeout(500)
        shot("f02-mic-pulse-mid")

        # 2. Drawer открыт, список прокручен
        page.evaluate(
            """() => {
                const btn = document.querySelector('.mic');
                if (btn) btn.classList.remove('listening');
            }"""
        )
        page.click('button[aria-label="Оглавление"]')
        page.wait_for_timeout(600)
        shot("f03-toc-open")

        page.evaluate(
            """() => {
                const list = document.querySelector('aside .list');
                if (list) list.scrollTop = 400;
            }"""
        )
        page.wait_for_timeout(300)
        shot("f04-toc-scrolled")

        page.click('aside button[aria-label="Закрыть"]')
        page.wait_for_timeout(400)

        # 3. Подсказка «потерял место»
        page.evaluate(
            """async () => {
                const s = await import('/src/stores/tracker.ts');
                s.setTrackerState({ searchMode: true });
            }"""
        )
        page.wait_for_timeout(3600)
        shot("f05-search-hint")

        browser.close()

    print(f"\nГотово: {os.path.abspath(OUT)}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
