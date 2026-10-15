"""Тест скорости переключения песни (регрессия на баг с задержкой).

Проверяет критерий: переключение занимает не больше 300 мс
и задержка не растёт с номером песни и не накапливается.

До исправления: 898 -> 2431 -> 6404 мс (рост пропорционально секции).
Причина: номер строки для каждого слова искался посимвольным проходом
от начала текста — 4600 слов x 650 000 символов на каждую секцию.
"""

import os
import sys
import json
from playwright.sync_api import sync_playwright

BASE = os.environ.get("BASE_URL", "http://localhost:5173/")
BUDGET_MS = 300


def main() -> int:
    failures: list[str] = []

    with sync_playwright() as p:
        browser = p.chromium.launch()
        ctx = browser.new_context(
            viewport={"width": 390, "height": 844}, is_mobile=True, has_touch=True
        )
        page = ctx.new_page()
        page.on("pageerror", lambda e: failures.append(f"pageerror: {e}"))

        page.goto(BASE, wait_until="domcontentloaded", timeout=60000)
        page.wait_for_timeout(4500)

        print("=== скорость переключения песни ===")
        timings = page.evaluate(
            """async () => {
                const results = [];
                // Разные секции + повтор для проверки накопления
                for (const idx of [2, 8, 14, 20, 2, 20]) {
                    document.querySelector('button[aria-label="Оглавление"]').click();
                    await new Promise(r => setTimeout(r, 350));

                    const before = document.querySelector('.verse')?.textContent ?? '';
                    const t0 = performance.now();
                    document.querySelectorAll('aside .row')[idx].click();

                    let changed = 0;
                    for (let i = 0; i < 300; i++) {
                        await new Promise(r => requestAnimationFrame(r));
                        const now = document.querySelector('.verse')?.textContent ?? '';
                        if (now && now !== before) { changed = performance.now(); break; }
                    }
                    results.push({ section: idx, ms: Math.round(changed - t0) });

                    // Drawer закрылся сразу?
                    await new Promise(r => setTimeout(r, 400));
                }
                return results;
            }"""
        )

        for t in timings:
            print(f"  секция {t['section']:>2}: {t['ms']} мс")
            if t["ms"] > BUDGET_MS:
                failures.append(f"секция {t['section']}: {t['ms']} мс (бюджет {BUDGET_MS})")

        # Задержка не должна расти с номером секции
        early = [t["ms"] for t in timings if t["section"] <= 8]
        late = [t["ms"] for t in timings if t["section"] >= 14]
        if early and late:
            avg_early = sum(early) / len(early)
            avg_late = sum(late) / len(late)
            print(f"\n  среднее для ранних: {avg_early:.0f} мс, для поздних: {avg_late:.0f} мс")
            if avg_late > avg_early * 3 + 50:
                failures.append(
                    f"задержка растёт с номером секции: {avg_early:.0f} -> {avg_late:.0f} мс"
                )

        # Проверка накопления: первая и последняя точки
        first = timings[0]["ms"]
        last = timings[-1]["ms"]
        print(f"  первая: {first} мс, последняя: {last} мс")
        if last > first * 3 + 50:
            failures.append(f"задержка накапливается: {first} -> {last} мс")

        # Долгие задачи не должны быть больше 300 мс
        print("\n=== долгие задачи при переключении ===")
        longtask = page.evaluate(
            """async () => {
                const tasks = [];
                let obs = null;
                if (window.PerformanceObserver &&
                    PerformanceObserver.supportedEntryTypes.includes('longtask')) {
                    obs = new PerformanceObserver((list) => {
                        for (const e of list.getEntries()) {
                            tasks.push(Math.round(e.duration));
                        }
                    });
                    obs.observe({ entryTypes: ['longtask'] });
                }

                document.querySelector('button[aria-label="Оглавление"]').click();
                await new Promise(r => setTimeout(r, 350));
                document.querySelectorAll('aside .row')[15].click();
                await new Promise(r => setTimeout(r, 2500));

                if (obs) obs.disconnect();
                return tasks;
            }"""
        )
        print(f"  задачи: {longtask}")

        if longtask and max(longtask) > 400:
            failures.append(f"долгая задача {max(longtask)} мс блокирует поток")

        browser.close()

    print("\n" + "=" * 60)
    if failures:
        print("ПРОВАЛЫ:")
        for f in failures:
            print("  -", f)
        return 1

    print(f"СКОРОСТЬ ПЕРЕКЛЮЧЕНИЯ В НОРМЕ (бюджет {BUDGET_MS} мс)")
    return 0


if __name__ == "__main__":
    sys.exit(main())
