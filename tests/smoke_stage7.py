"""Смоук-тест этапа 7: темы, настройки, оглавление, поиск, статистика, позиция.

Проверяет критерии готовности без живого голоса (микрофон в headless не нужен):
  1. все 5 тем переключаются и меняют цвета;
  2. шрифт/интервал/serif применяются;
  3. оглавление открывается, клик перескакивает;
  4. поиск находит и перескакивает;
  5. позиция сохраняется и восстанавливается после перезагрузки;
  6. загрузка своего .txt.

Запуск: python tests/smoke_stage7.py
BASE_URL по умолчанию http://localhost:5174/
"""

import os
import sys
import json
from playwright.sync_api import sync_playwright

BASE = os.environ.get("BASE_URL", "http://localhost:5174/")


def main() -> int:
    failures: list[str] = []

    with sync_playwright() as p:
        browser = p.chromium.launch()
        page = browser.new_page(viewport={"width": 1000, "height": 800})
        page.on("pageerror", lambda e: failures.append(f"pageerror: {e}"))

        page.goto(BASE, wait_until="domcontentloaded", timeout=60000)
        page.wait_for_timeout(4500)

        # ---------- 1. Темы ----------
        print("=== 1. пять тем ===")
        themes = page.evaluate(
            """async () => {
                const s = await import('/src/stores/settings.ts');
                const out = [];
                for (const t of [0, 1, 2, 3, 4]) {
                    s.updateSettings({ theme: t });
                    await new Promise((r) => setTimeout(r, 80));
                    const cs = getComputedStyle(document.documentElement);
                    out.push({
                        theme: t,
                        attr: document.documentElement.getAttribute('data-theme'),
                        bg: cs.getPropertyValue('--bg').trim(),
                        text: cs.getPropertyValue('--text-main').trim(),
                        hlBg: cs.getPropertyValue('--hl-bg').trim(),
                    });
                }
                return out;
            }"""
        )
        for t in themes:
            print(" ", t)

        attrs = [t["attr"] for t in themes]
        if attrs != ["system", "light", "sepia", "dark", "black"]:
            failures.append(f"неверные data-theme: {attrs}")

        # Уникальных фонов должно быть 4: system в headless совпадает
        # со светлой (схема по умолчанию — light), это корректно.
        bgs = {t["bg"] for t in themes}
        if len(bgs) < 4:
            failures.append(f"темы дают слишком мало разных фонов: {bgs}")

        # Проверка цветов против оригинала
        expected = {
            1: ("#fbf8f1", "#1f1d1a"),  # light
            3: ("#121212", "#e7e2d9"),  # dark
            4: ("#000000", "#dedad2"),  # black
        }
        for t in themes:
            exp = expected.get(t["theme"])
            if exp and (t["bg"] != exp[0] or t["text"] != exp[1]):
                failures.append(
                    f"тема {t['attr']}: ожидали bg={exp[0]} text={exp[1]}, получили bg={t['bg']} text={t['text']}"
                )

        # ---------- 2. Шрифт / интервал / serif ----------
        print("\n=== 2. типографика ===")
        typo = page.evaluate(
            """async () => {
                const s = await import('/src/stores/settings.ts');
                s.updateSettings({ theme: 3, fontSp: 30, lineSpacing: 1.8, serif: false });
                await new Promise((r) => setTimeout(r, 150));
                const reader = document.querySelector('.reader');
                const cs = reader ? getComputedStyle(reader) : null;
                return {
                    fontVar: cs ? cs.getPropertyValue('--font-size').trim() : null,
                    lineVar: cs ? cs.getPropertyValue('--line-height').trim() : null,
                    fontFamily: cs ? cs.getPropertyValue('--font-family').trim() : null,
                    stored: JSON.parse(localStorage.getItem('tracker.settings') || '{}'),
                };
            }"""
        )
        print(" ", json.dumps(typo, ensure_ascii=False))
        if typo["fontVar"] != "30px":
            failures.append(f"шрифт не применился: {typo['fontVar']}")
        if typo["lineVar"] != "1.8":
            failures.append(f"интервал не применился: {typo['lineVar']}")
        if "sans" not in (typo["fontFamily"] or ""):
            failures.append(f"serif=false не применился: {typo['fontFamily']}")

        # Возвращаем нормальные настройки
        page.evaluate(
            """async () => {
                const s = await import('/src/stores/settings.ts');
                s.updateSettings({ fontSp: 22, lineSpacing: 1.35, serif: true, theme: 3 });
            }"""
        )
        page.wait_for_timeout(200)

        # ---------- 3. Оглавление ----------
        print("\n=== 3. оглавление ===")
        toc = page.evaluate(
            """async () => {
                const docStore = await import('/src/stores/document.ts');
                const st = docStore.currentDocument();
                const toc = st.doc.sections.filter((x) => x.inToc);
                return { count: toc.length, first: toc[0] ? toc[0].title : null };
            }"""
        )
        print(" ", toc)

        # Открываем панель оглавления кликом
        page.click('button[aria-label="Оглавление"]')
        page.wait_for_timeout(400)
        toc_rows = page.locator(".panel-row").count()
        print(f"  строк в оглавлении: {toc_rows}")
        if toc_rows == 0:
            failures.append("оглавление пустое")

        # Переход по 3-й секции
        before = page.evaluate(
            """async () => {
                const s = await import('/src/stores/tracker.ts');
                return s.currentTrackerState().currentWord;
            }"""
        )
        page.locator(".panel-row").nth(2).click()
        page.wait_for_timeout(700)
        after = page.evaluate(
            """async () => {
                const s = await import('/src/stores/tracker.ts');
                return s.currentTrackerState().currentWord;
            }"""
        )
        print(f"  позиция: {before} -> {after}")
        if after == before:
            failures.append("клик по оглавлению не перескочил")

        # ---------- 4. Поиск ----------
        print("\n=== 4. поиск ===")
        page.click('button[aria-label="Поиск"]')
        page.wait_for_timeout(400)
        # «муза» встречается в «Одиссее» 5 раз; слова «лодка» там нет вообще
        page.fill(".input", "муза")
        page.click("text=Найти")
        page.wait_for_timeout(800)

        hits = page.locator(".panel-row").count()
        print(f"  найдено по «муза»: {hits}")
        if hits == 0:
            failures.append("поиск ничего не нашёл (ожидались совпадения по «муза»)")

        if hits > 0:
            pos_before = page.evaluate(
                """async () => {
                    const s = await import('/src/stores/tracker.ts');
                    return s.currentTrackerState().currentWord;
                }"""
            )
            page.locator(".panel-row").nth(1).click()
            page.wait_for_timeout(700)
            pos_after = page.evaluate(
                """async () => {
                    const s = await import('/src/stores/tracker.ts');
                    return s.currentTrackerState().currentWord;
                }"""
            )
            print(f"  позиция: {pos_before} -> {pos_after}")
            if pos_after == pos_before:
                failures.append("клик по результату поиска не перескочил")

        page.keyboard.press("Escape")
        page.wait_for_timeout(300)

        # ---------- 5. Сохранение позиции ----------
        print("\n=== 5. сохранение позиции ===")
        # Ставим позицию и ждём throttled-запись
        page.evaluate(
            """async () => {
                const docStore = await import('/src/stores/document.ts');
                const st = docStore.currentDocument();
                docStore.savePositionThrottled(st.key, 777);
                await docStore.flushPosition();
            }"""
        )
        page.wait_for_timeout(600)

        saved = page.evaluate(
            """async () => {
                const docStore = await import('/src/stores/document.ts');
                const st = docStore.currentDocument();
                return await docStore.loadPosition(st.key);
            }"""
        )
        print(f"  сохранено в IndexedDB: {saved}")
        if saved != 777:
            failures.append(f"позиция не сохранилась: {saved}")

        # Перезагрузка страницы — позиция должна восстановиться
        print("\n=== 5b. перезагрузка страницы (F5) ===")
        page.reload(wait_until="domcontentloaded")
        page.wait_for_timeout(4500)

        after_reload = page.evaluate(
            """async () => {
                const docStore = await import('/src/stores/document.ts');
                const st = docStore.currentDocument();
                return { key: st.key, position: st.position, size: st.doc ? st.doc.size : 0 };
            }"""
        )
        print(" ", after_reload)
        if after_reload["position"] != 777:
            failures.append(
                f"позиция не восстановилась после F5: {after_reload['position']} (ждали 777)"
            )

        # ---------- 6. Загрузка своего .txt ----------
        print("\n=== 6. загрузка своего .txt ===")
        sample = "Первое слово второе слово третье слово четвёртое слово"
        page.set_input_files(
            'input[type="file"]',
            {"name": "sample.txt", "mimeType": "text/plain", "buffer": sample.encode("utf-8")},
        )
        page.wait_for_timeout(1500)

        loaded = page.evaluate(
            """async () => {
                const docStore = await import('/src/stores/document.ts');
                const st = docStore.currentDocument();
                return { key: st.key, title: st.title, size: st.doc ? st.doc.size : 0 };
            }"""
        )
        print(" ", loaded)
        if not loaded["key"].startswith("file:"):
            failures.append(f"ключ документа не сменился: {loaded['key']}")
        if loaded["size"] != 8:
            failures.append(f"в файле ожидалось 8 слов, получено {loaded['size']}")

        browser.close()

    print("\n" + "=" * 60)
    if failures:
        print("ПРОВАЛЫ:")
        for f in failures:
            print("  -", f)
        return 1

    print("ВСЕ ПРОВЕРКИ ПРОЙДЕНЫ")
    return 0


if __name__ == "__main__":
    sys.exit(main())
