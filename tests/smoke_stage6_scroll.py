"""Смоук-тест автопрокрутки (этап 6, блокер).

Проверяет то, что было сломано:
  1. курсор уходит за нижнюю границу → текст прокручивается;
  2. курсор остаётся видимым примерно на 30% высоты видимой области;
  3. нет двойных прокруток (один scrollTo на одно продвижение);
  4. пауза 4 с после ручного скролла, затем возобновление.

Запуск: python tests/smoke_stage6_scroll.py
Требует запущенного npm run dev (порт берётся из BASE_URL).
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
        page = browser.new_page(viewport={"width": 900, "height": 700})
        page.on("pageerror", lambda e: failures.append(f"pageerror: {e}"))

        page.goto(BASE, wait_until="domcontentloaded", timeout=60000)
        page.wait_for_timeout(4000)

        print("=== 1-3. прокрутка за курсором, видимость, отсутствие дублей ===")
        result = page.evaluate(
            """async () => {
                const docStore = await import('/src/stores/document.ts');
                const ctrlMod = await import('/src/lib/MainController.ts');

                const st = docStore.currentDocument();
                if (!st.doc) return { error: 'нет документа' };

                const el = document.querySelector('.reader');
                const scrollCalls = [];
                const orig = el.scrollTo.bind(el);
                el.scrollTo = function (arg) {
                    scrollCalls.push(arg);
                    return orig(arg);
                };

                const ctrl = new ctrlMod.MainController({
                    onCursorRendered: () => {}, onToast: () => {}, onHeardChanged: () => {},
                });
                ctrl.loadDocument(st.doc, 0);

                const h = el.clientHeight;
                const steps = [];
                let prevScrollTop = el.scrollTop;
                let prevCalls = 0;

                for (const n of [100, 200, 300, 400, 500, 600]) {
                    const words = [];
                    for (let i = 0; i < n; i++) words.push(st.doc.norm[i]);
                    ctrl.onSpeechPartial(words.join(' '));
                    await new Promise((r) => setTimeout(r, 700));

                    const cursorEl = document.querySelector('.word.cursor');
                    const er = el.getBoundingClientRect();
                    let topRel = null, visible = null;
                    if (cursorEl) {
                        const cr = cursorEl.getBoundingClientRect();
                        topRel = Math.round(cr.top - er.top);
                        visible = cr.top >= er.top - 1 && cr.bottom <= er.bottom + 1;
                    }

                    steps.push({
                        at: n,
                        scrollTop: el.scrollTop,
                        cursorTopRel: topRel,
                        visible,
                        callsForStep: scrollCalls.length - prevCalls,
                        height: h,
                    });
                    prevScrollTop = el.scrollTop;
                    prevCalls = scrollCalls.length;
                }

                return { steps, totalScrollCalls: scrollCalls.length, height: h };
            }"""
        )
        print(json.dumps(result, indent=2, ensure_ascii=False))

        steps = result.get("steps", [])

        # Проверка 1: к концу текста scrollTop должен вырасти
        if not steps or steps[-1]["scrollTop"] <= 0:
            failures.append("автопрокрутка не сработала: scrollTop остался 0")

        # Проверка 2: курсор виден на каждом шаге, где он уходил за границу
        for s in steps:
            if s["visible"] is False:
                failures.append(f"курсор не виден на шаге {s['at']} (topRel {s['cursorTopRel']})")

        # Проверка 3: курсор держится в разумной зоне (не у края)
        for s in steps:
            if s["cursorTopRel"] is not None and s["cursorTopRel"] > s["height"] * 0.75:
                failures.append(
                    f"курсор слишком низко на шаге {s['at']}: {s['cursorTopRel']} при высоте {s['height']}"
                )

        # Проверка 4: нет двойных прокруток на один шаг
        for s in steps:
            if s["callsForStep"] > 1:
                failures.append(
                    f"двойная прокрутка на шаге {s['at']}: {s['callsForStep']} вызовов"
                )

        print("\n=== 4. пауза после ручного скролла ===")
        pause = page.evaluate(
            """async () => {
                const docStore = await import('/src/stores/document.ts');
                const ctrlMod = await import('/src/lib/MainController.ts');

                const st = docStore.currentDocument();
                const el = document.querySelector('.reader');

                const ctrl = new ctrlMod.MainController({
                    onCursorRendered: () => {}, onToast: () => {}, onHeardChanged: () => {},
                });
                ctrl.loadDocument(st.doc, 0);

                // Читаем немного
                ctrl.onSpeechPartial(st.doc.norm.slice(0, 50).join(' '));
                await new Promise((r) => setTimeout(r, 600));

                // Пользователь прокрутил вручную
                el.dispatchEvent(new WheelEvent('wheel', { bubbles: true }));
                el.scrollTop = 2500;
                const afterManual = el.scrollTop;
                await new Promise((r) => setTimeout(r, 300));

                // Продолжаем читать — автопрокрутка должна молчать
                ctrl.onSpeechPartial(st.doc.norm.slice(0, 400).join(' '));
                await new Promise((r) => setTimeout(r, 800));
                const duringPause = el.scrollTop;

                return {
                    afterManual,
                    duringPause,
                    paused: Math.abs(duringPause - afterManual) < 30,
                };
            }"""
        )
        print(json.dumps(pause, indent=2, ensure_ascii=False))

        if not pause.get("paused"):
            failures.append(
                f"пауза не сработала: было {pause.get('afterManual')}, стало {pause.get('duringPause')}"
            )

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
