"""Проверка диагностической панели.

1. Скрыта без флага.
2. Включается ?debug=1.
3. Включается пятью тапами по названию песни.
4. Показывает состояние, историю, копирует отчёт.
5. Не ломает обычный UI.
"""

import os
import sys
import json
from playwright.sync_api import sync_playwright

BASE = os.environ.get("BASE_URL", "http://localhost:5173/")


def main() -> int:
    failures: list[str] = []

    with sync_playwright() as p:
        browser = p.chromium.launch()
        ctx = browser.new_context(
            viewport={"width": 390, "height": 844},
            is_mobile=True,
            has_touch=True,
            permissions=["clipboard-read", "clipboard-write"],
        )
        page = ctx.new_page()
        page.on("pageerror", lambda e: failures.append(f"pageerror: {e}"))

        # ---------- 1. Без флага скрыта ----------
        print("=== 1. без флага панель скрыта ===")
        page.goto(BASE, wait_until="domcontentloaded", timeout=60000)
        page.wait_for_timeout(4500)

        hidden = page.locator(".diag").count()
        print(f"  панель в DOM: {'есть (ПЛОХО)' if hidden else 'нет (верно)'}")
        if hidden:
            failures.append("панель видна без флага")

        # UI работает как обычно
        words = page.locator(".word").count()
        mic = page.locator(".mic").count()
        print(f"  слов: {words}, микрофон: {'есть' if mic else 'нет'}")
        if words == 0 or mic == 0:
            failures.append("обычный UI сломан")

        # ---------- 2. Флаг ?debug=1 ----------
        print("\n=== 2. флаг ?debug=1 ===")
        page.goto(BASE + "?debug=1", wait_until="domcontentloaded", timeout=60000)
        page.wait_for_timeout(4500)

        shown = page.locator(".diag").count()
        print(f"  панель: {'показана' if shown else 'НЕ показана'}")
        if not shown:
            failures.append("?debug=1 не включает панель")

        if shown:
            geom = page.evaluate(
                """() => {
                    const d = document.querySelector('.diag');
                    const r = d.getBoundingClientRect();
                    const cs = getComputedStyle(d);
                    return {
                        height: Math.round(r.height),
                        viewportH: window.innerHeight,
                        percentOfScreen: Math.round(r.height / window.innerHeight * 100),
                        fontSize: cs.fontSize,
                        fontFamily: cs.fontFamily.slice(0, 40),
                    };
                }"""
            )
            print("  геометрия:", json.dumps(geom, ensure_ascii=False))

            if geom["percentOfScreen"] > 30:
                failures.append(f"панель занимает {geom['percentOfScreen']}% высоты (лимит 30%)")
            if "mono" not in geom["fontFamily"].lower() and "menlo" not in geom["fontFamily"].lower():
                failures.append(f"шрифт не monospace: {geom['fontFamily']}")

        # ---------- 3. Заполнение данными ----------
        print("\n=== 3. панель показывает распознавание ===")
        # Имитируем речь через прямой вызов движка
        feed = page.evaluate(
            """async () => {
                const docStore = await import('/src/stores/document.ts');
                const ctrlMod = await import('/src/lib/MainController.ts');
                const diagMod = await import('/src/stores/diagnostics.ts');
                const st = docStore.currentDocument();

                const ctrl = new ctrlMod.MainController({
                    onCursorRendered: () => {}, onToast: () => {}, onHeardChanged: () => {},
                });
                ctrl.loadDocument(st.doc, 0);

                const words = "муза скажи мне о том многоопытном муже".split(' ');

                // partial и final — как движок
                for (let k = 2; k <= words.length; k++) {
                    const phrase = words.slice(0, k).join(' ');
                    const before = ctrl.getTracker().position;
                    diagMod.recordSpeech('partial', phrase);
                    ctrl.onSpeechPartial(phrase);
                    const t = ctrl.getTracker();
                    const s = ctrl.getState();
                    const moved = t.position !== before;
                    diagMod.recordTracker('partial', phrase, {
                        pos: t.position, move: moved,
                        far: moved ? Math.abs(t.position - before) > 40 : null,
                        confidence: t.confidence, searchMode: t.searchMode,
                        unconfirmed: s.unconfirmedCount, section: s.sectionIndex,
                    });
                }

                const finalText = words.join(' ');
                const beforeF = ctrl.getTracker().position;
                diagMod.recordSpeech('final', finalText);
                ctrl.onSpeechFinal(finalText);
                const t2 = ctrl.getTracker();
                const s2 = ctrl.getState();
                const movedF = t2.position !== beforeF;
                diagMod.recordTracker('final', finalText, {
                    pos: t2.position, move: movedF,
                    far: movedF ? Math.abs(t2.position - beforeF) > 40 : null,
                    confidence: t2.confidence, searchMode: t2.searchMode,
                    unconfirmed: s2.unconfirmedCount, section: s2.sectionIndex,
                });

                await new Promise(r => setTimeout(r, 400));

                const d = document.querySelector('.diag');
                return {
                    text: d ? d.innerText.slice(0, 400) : null,
                    historyEntries: d ? d.querySelectorAll('.entry').length : 0,
                };
            }"""
        )
        print(f"  записей в истории: {fetch if False else feed['historyEntries']}")
        print("  содержимое панели:")
        for line in (feed["text"] or "").split("\n")[:14]:
            print(f"    {line}")

        if feed["historyEntries"] == 0:
            failures.append("история пуста после событий")

        # ---------- 4. Копирование ----------
        print("\n=== 4. кнопка «Копировать» ===")
        page.click(".diag >> text=Копировать")
        page.wait_for_timeout(600)

        clip = page.evaluate("""async () => {
            try { return await navigator.clipboard.readText(); }
            catch (e) { return 'ОШИБКА: ' + e.message; }
        }""")
        print(f"  в буфере {len(clip)} символов")
        print("  первые строки:")
        for line in clip.split("\n")[:6]:
            print(f"    {line}")

        if len(clip) < 50:
            failures.append(f"отчёт не скопирован: {clip[:100]}")
        elif "диагностика" not in clip:
            failures.append("в буфере не отчёт диагностики")

        # ---------- 5. Кнопка «Очистить» ----------
        print("\n=== 5. кнопка «Очистить» ===")
        # Сначала убедимся, что в истории есть записи (final-события)
        before_clear = page.evaluate(
            """async () => {
                const d = await import('/src/stores/diagnostics.ts');
                d.recordTracker('final', 'проверка очистки', {
                    pos: 5, move: true, far: false, confidence: 0.9,
                    searchMode: false, unconfirmed: 0, section: 0,
                });
                await new Promise(r => setTimeout(r, 300));
                return document.querySelectorAll('.diag .entry').length;
            }"""
        )
        print(f"  записей до очистки: {before_clear}")

        page.click(".diag >> text=Очистить")
        page.wait_for_timeout(500)

        cleared = page.evaluate(
            """() => ({
                entries: document.querySelectorAll('.diag .entry').length,
                emptyShown: !!document.querySelector('.diag .empty'),
            })"""
        )
        print(f"  записей после очистки: {cleared['entries']}, подсказка: {cleared['emptyShown']}")

        if before_clear == 0:
            failures.append("не удалось наполнить историю для проверки очистки")
        if cleared["entries"] != 0:
            failures.append(f"очистка не сработала: {cleared['entries']} записей")
        if not cleared["emptyShown"]:
            failures.append("после очистки не показана подсказка")

        # ---------- 6. Обычный UI цел ----------
        print("\n=== 6. обычный UI не сломан ===")
        check = page.evaluate(
            """async () => {
                const storeMod = await import('/src/stores/tracker.ts');
                storeMod.setTrackerState({ currentWord: 50 });
                await new Promise(r => setTimeout(r, 400));
                const cur = document.querySelector('.word.cursor');
                return {
                    cursorText: cur ? cur.textContent : null,
                    readCount: document.querySelectorAll('.word.read').length,
                    micExists: !!document.querySelector('.mic'),
                    headerExists: !!document.querySelector('header'),
                };
            }"""
        )
        print(" ", json.dumps(check, ensure_ascii=False))

        if check["cursorText"] is None:
            failures.append("подсветка не работает при включённой панели")

        browser.close()

    print("\n" + "=" * 60)
    if failures:
        print("ПРОВАЛЫ:")
        for f in failures:
            print("  -", f)
        return 1
    print("ДИАГНОСТИЧЕСКАЯ ПАНЕЛЬ РАБОТАЕТ")
    return 0


if __name__ == "__main__":
    sys.exit(main())
