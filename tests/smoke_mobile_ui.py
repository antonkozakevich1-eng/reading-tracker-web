"""Проверка мобильного UI (iPhone) — этап переделки интерфейса.

Проверяет:
  1. раскладку на iPhone-вьюпорте (390×844, iPhone 14 Pro);
  2. быстрые кнопки: A−/A+, цикл темы, поповер чувствительности;
  3. размеры тач-целей (минимум 44×44 по Apple HIG);
  4. drawer оглавления и полноэкранный поиск;
  5. все 5 тем на мобильном.
"""

import os
import sys
import json
from playwright.sync_api import sync_playwright

BASE = os.environ.get("BASE_URL", "http://localhost:5174/")

# iPhone 14 Pro
VIEWPORT = {"width": 390, "height": 844}


def main() -> int:
    failures: list[str] = []

    with sync_playwright() as p:
        browser = p.chromium.launch()
        context = browser.new_context(
            viewport=VIEWPORT,
            device_scale_factor=3,
            is_mobile=True,
            has_touch=True,
        )
        page = context.new_page()
        page.on("pageerror", lambda e: failures.append(f"pageerror: {e}"))

        page.goto(BASE, wait_until="domcontentloaded", timeout=60000)
        page.wait_for_timeout(4500)

        # Сбрасываем настройки: тест не должен зависеть от прошлых прогонов
        page.evaluate(
            """async () => {
                const s = await import('/src/stores/settings.ts');
                s.resetSettings();
            }"""
        )
        page.wait_for_timeout(400)

        # ---------- 1. Раскладка ----------
        print("=== 1. раскладка на iPhone ===")
        layout = page.evaluate(
            """() => {
                const header = document.querySelector('header');
                const bar = document.querySelector('footer');
                const reader = document.querySelector('.reader');
                const r = (el) => el ? el.getBoundingClientRect() : null;
                const hr = r(header), br = r(bar), rr = r(reader);
                return {
                    viewport: [window.innerWidth, window.innerHeight],
                    headerH: hr ? Math.round(hr.height) : null,
                    barH: br ? Math.round(br.height) : null,
                    readerH: rr ? Math.round(rr.height) : null,
                    // Основной контент не должен вылезать за экран
                    noHorizontalScroll: document.documentElement.scrollWidth <= window.innerWidth + 1,
                    theme: document.documentElement.getAttribute('data-theme'),
                };
            }"""
        )
        print(" ", json.dumps(layout, ensure_ascii=False))

        if not layout["noHorizontalScroll"]:
            failures.append("горизонтальный скролл — вёрстка не влезает в экран")
        if layout["headerH"] and layout["headerH"] > 80:
            failures.append(f"шапка слишком высокая: {layout['headerH']}px (ожидалось ≤ 80)")

        # ---------- 2. Тач-цели ----------
        print("\n=== 2. размеры тач-целей (Apple HIG: ≥44×44) ===")
        targets = page.evaluate(
            """() => {
                const sel = 'header button, footer button';
                const out = [];
                for (const el of document.querySelectorAll(sel)) {
                    const r = el.getBoundingClientRect();
                    out.push({
                        label: el.getAttribute('aria-label') || el.textContent.trim().slice(0, 14),
                        w: Math.round(r.width),
                        h: Math.round(r.height),
                    });
                }
                return out;
            }"""
        )
        for t in targets:
            print(f"  {t['label']:<28} {t['w']}×{t['h']}")
            if t["w"] < 44 or t["h"] < 44:
                failures.append(f"тач-цель меньше 44px: {t['label']} {t['w']}×{t['h']}")

        # ---------- 3. Быстрые кнопки ----------
        print("\n=== 3. быстрые кнопки ===")

        # A+
        font_before = page.evaluate(
            """async () => (await import('/src/stores/settings.ts')).currentSettings().fontSp"""
        )
        page.click('button[aria-label="Увеличить шрифт"]')
        page.wait_for_timeout(300)
        font_after = page.evaluate(
            """async () => (await import('/src/stores/settings.ts')).currentSettings().fontSp"""
        )
        print(f"  A+: {font_before} → {font_after}")
        if font_after != font_before + 1:
            failures.append(f"A+ не увеличил шрифт: {font_before} → {font_after}")

        # A−
        page.click('button[aria-label="Уменьшить шрифт"]')
        page.wait_for_timeout(300)
        font_back = page.evaluate(
            """async () => (await import('/src/stores/settings.ts')).currentSettings().fontSp"""
        )
        print(f"  A−: {font_after} → {font_back}")
        if font_back != font_before:
            failures.append(f"A− не вернул шрифт: {font_back}")

        # Шрифт реально применяется к тексту
        applied = page.evaluate(
            """() => {
                const reader = document.querySelector('.reader');
                return reader ? getComputedStyle(reader).getPropertyValue('--font-size').trim() : null;
            }"""
        )
        print(f"  CSS --font-size: {applied}")
        if applied != f"{font_back}px":
            failures.append(f"шрифт не применился к тексту: {applied}")

        # Цикл темы
        print("\n  цикл темы:")
        themes = []
        for _ in range(6):
            t = page.evaluate("() => document.documentElement.getAttribute('data-theme')")
            themes.append(t)
            page.click('button[aria-label="Следующая тема"]')
            page.wait_for_timeout(250)
        print(f"    {themes}")
        if len(set(themes)) < 5:
            failures.append(f"цикл темы не проходит все 5: {themes}")

        # Поповер чувствительности
        page.click('button[aria-label="Чувствительность микрофона"]')
        page.wait_for_timeout(350)
        popover = page.locator(".sens-popover").count()
        print(f"\n  поповер чувствительности: {'открылся' if popover else 'НЕ открылся'}")
        if popover == 0:
            failures.append("поповер чувствительности не открылся")

        if popover:
            # Playwright fill() не шлёт input-событие для range, поэтому
            # меняем значение как это делает браузер при перетаскивании
            page.evaluate(
                """() => {
                    const r = document.querySelector('.sens-popover input[type=range]');
                    r.value = '75';
                    r.dispatchEvent(new Event('input', { bubbles: true }));
                }"""
            )
            page.wait_for_timeout(300)
            sens = page.evaluate(
                """async () => (await import('/src/stores/settings.ts')).currentSettings().sensitivity"""
            )
            print(f"  чувствительность: {sens}")
            if sens != 75:
                failures.append(f"слайдер чувствительности не сработал: {sens}")
            page.keyboard.press("Escape")
            page.click(".reader", position={"x": 100, "y": 200})
            page.wait_for_timeout(300)

        # ---------- 4. Оглавление ----------
        print("\n=== 4. drawer оглавления ===")
        page.click('button[aria-label="Оглавление"]')
        page.wait_for_timeout(500)

        drawer = page.evaluate(
            """() => {
                const d = document.querySelector('aside');
                if (!d) return null;
                const r = d.getBoundingClientRect();
                const rows = d.querySelectorAll('.row').length;
                const active = d.querySelector('.row.active');
                // Drawer должен выезжать слева и не занимать весь экран
                return {
                    x: Math.round(r.x),
                    w: Math.round(r.width),
                    rows,
                    activeFound: !!active,
                    activeText: active ? active.textContent.trim() : null,
                };
            }"""
        )
        print(" ", json.dumps(drawer, ensure_ascii=False))

        if drawer is None:
            failures.append("drawer оглавления не открылся")
        else:
            if drawer["rows"] == 0:
                failures.append("в оглавлении нет строк")
            if drawer["w"] > VIEWPORT["width"] * 0.9:
                failures.append(f"drawer шире 90% экрана: {drawer['w']}px")

        # Переход по песне
        if drawer and drawer["rows"] > 2:
            pos_before = page.evaluate(
                """async () => (await import('/src/stores/tracker.ts')).currentTrackerState().currentWord"""
            )
            page.locator("aside .row").nth(2).click()
            page.wait_for_timeout(700)
            pos_after = page.evaluate(
                """async () => (await import('/src/stores/tracker.ts')).currentTrackerState().currentWord"""
            )
            print(f"  переход: позиция {pos_before} → {pos_after}")
            if pos_after == pos_before:
                failures.append("клик по песне в drawer не перескочил")
            if page.locator("aside").count() > 0:
                failures.append("drawer не закрылся после выбора")

        # ---------- 5. Поиск ----------
        print("\n=== 5. полноэкранный поиск ===")
        page.click('button[aria-label="Поиск"]')
        page.wait_for_timeout(500)

        search = page.evaluate(
            """() => {
                const screen = document.querySelector('.screen');
                if (!screen) return null;
                const r = screen.getBoundingClientRect();
                return {
                    fullscreen: r.width >= window.innerWidth - 1 && r.height >= window.innerHeight - 1,
                    hasCancel: !!Array.from(screen.querySelectorAll('button')).find(b => b.textContent.includes('Отмена')),
                    hasInput: !!screen.querySelector('input'),
                    focused: document.activeElement === screen.querySelector('input'),
                };
            }"""
        )
        print(" ", json.dumps(search, ensure_ascii=False))

        if search is None:
            failures.append("экран поиска не открылся")
        else:
            if not search["fullscreen"]:
                failures.append("поиск не на весь экран")
            if not search["hasCancel"]:
                failures.append("нет кнопки «Отмена»")
            if not search["focused"]:
                failures.append("поле поиска без автофокуса")

        # Поиск находит
        page.fill(".input", "муза")
        page.wait_for_timeout(900)
        results = page.locator(".result").count()
        counter = page.locator(".counter").count()
        print(f"  результатов: {results}, счётчик: {'есть' if counter else 'нет'}")
        if results == 0:
            failures.append("поиск не нашёл «муза»")
        if counter == 0:
            failures.append("нет счётчика «N из M»")

        page.click("text=Отмена")
        page.wait_for_timeout(400)

        # ---------- 6. Темы на мобильном ----------
        print("\n=== 6. темы на мобильном ===")
        theme_check = page.evaluate(
            """async () => {
                const s = await import('/src/stores/settings.ts');
                const out = [];
                for (const t of [0, 1, 2, 3, 4]) {
                    s.updateSettings({ theme: t });
                    await new Promise((r) => setTimeout(r, 120));
                    const cs = getComputedStyle(document.documentElement);
                    out.push({
                        attr: document.documentElement.getAttribute('data-theme'),
                        bg: cs.getPropertyValue('--bg').trim(),
                        text: cs.getPropertyValue('--text-main').trim(),
                    });
                }
                return out;
            }"""
        )
        for t in theme_check:
            print(f"  {t['attr']:<8} bg={t['bg']:<9} text={t['text']}")

        # В тёмных темах текст не должен быть чистым белым
        for t in theme_check:
            if t["attr"] in ("dark", "black"):
                if t["text"].lower() in ("#ffffff", "#fff"):
                    failures.append(f"тема {t['attr']}: чистый белый текст на тёмном")

        browser.close()

    print("\n" + "=" * 60)
    if failures:
        print("ПРОВАЛЫ:")
        for f in failures:
            print("  -", f)
        return 1

    print("МОБИЛЬНЫЙ UI ПРОЙДЕН")
    return 0


if __name__ == "__main__":
    sys.exit(main())
