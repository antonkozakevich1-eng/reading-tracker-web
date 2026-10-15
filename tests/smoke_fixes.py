"""Проверка трёх исправлений на мобильном (iPhone).

  1. Нет квадрата/картинки вокруг кнопки микрофона: пульсация — box-shadow.
  2. Drawer: список песен скроллится и НЕ закрывается; закрытие — кнопкой.
  3. Подсказка «потерял место» — тонкая полоска под шапкой, не поверх текста.
"""

import os
import sys
import json
from playwright.sync_api import sync_playwright

BASE = os.environ.get("BASE_URL", "http://localhost:5174/")
VIEWPORT = {"width": 390, "height": 844}


def main() -> int:
    failures: list[str] = []

    with sync_playwright() as p:
        browser = p.chromium.launch()
        ctx = browser.new_context(
            viewport=VIEWPORT, device_scale_factor=2, is_mobile=True, has_touch=True
        )
        page = ctx.new_page()
        page.on("pageerror", lambda e: failures.append(f"pageerror: {e}"))

        page.goto(BASE, wait_until="domcontentloaded", timeout=60000)
        page.wait_for_timeout(4500)

        # ---------- 1. Микрофон ----------
        print("=== 1. кнопка микрофона при записи ===")

        # Включаем «запись» программно: ставим listening через клик по кнопке
        # (микрофон в headless даст фейковый поток)
        mic_before = page.evaluate(
            """() => {
                const btn = document.querySelector('button[aria-label="Начать слушать"]');
                if (!btn) return null;
                const cs = getComputedStyle(btn);
                return {
                    hasImgNearby: !!document.querySelector('.mic-wrap img'),
                    borderRadius: cs.borderRadius,
                    animation: cs.animationName,
                };
            }"""
        )
        print("  до записи:", json.dumps(mic_before, ensure_ascii=False))

        if mic_before is None:
            failures.append("кнопка микрофона не найдена")
        else:
            if mic_before["hasImgNearby"]:
                failures.append("рядом с микрофоном осталась картинка (квадрат)")
            if mic_before["borderRadius"] != "50%":
                failures.append(f"кнопка не круглая: {mic_before['borderRadius']}")

        # Симулируем состояние записи: добавляем класс listening напрямую
        listening_state = page.evaluate(
            """() => {
                const btn = document.querySelector('button[aria-label="Начать слушать"]');
                btn.classList.add('listening');
                const cs = getComputedStyle(btn);
                return {
                    animationName: cs.animationName,
                    animationDuration: cs.animationDuration,
                    hasImg: !!document.querySelector('.mic-wrap img'),
                    hasPulseSpan: !!document.querySelector('.pulse'),
                    hasWaves: !!document.querySelector('.waves'),
                };
            }"""
        )
        print("  при записи:", json.dumps(listening_state, ensure_ascii=False))

        if listening_state["hasImg"]:
            failures.append("при записи появилась картинка вокруг микрофона")
        if listening_state["hasPulseSpan"] or listening_state["hasWaves"]:
            failures.append("остались элементы .pulse/.waves")
        if "mic-pulse" not in listening_state["animationName"]:
            failures.append(f"нет анимации mic-pulse: {listening_state['animationName']}")

        # ---------- 2. Drawer ----------
        print("\n=== 2. скролл списка в drawer ===")
        page.click('button[aria-label="Оглавление"]')
        page.wait_for_timeout(500)

        # Список должен быть прокручиваемым
        list_info = page.evaluate(
            """() => {
                const list = document.querySelector('aside .list');
                if (!list) return null;
                return {
                    scrollHeight: list.scrollHeight,
                    clientHeight: list.clientHeight,
                    canScroll: list.scrollHeight > list.clientHeight + 5,
                    touchAction: getComputedStyle(list).touchAction,
                    overscroll: getComputedStyle(list).overscrollBehavior,
                };
            }"""
        )
        print("  список:", json.dumps(list_info, ensure_ascii=False))

        if list_info is None:
            failures.append("список в drawer не найден")
        elif not list_info["canScroll"]:
            failures.append("список песен не прокручивается")

        # Тянем вниз, когда список в самом верху: drawer НЕ должен закрыться
        # (закрытие свайпом убрано намеренно — оно конфликтовало со скроллом)
        page.evaluate(
            """() => {
                const list = document.querySelector('aside .list');
                const r = list.getBoundingClientRect();
                const x = r.left + r.width / 2;
                const startY = r.top + 60;

                const mk = (type, y) => new TouchEvent(type, {
                    bubbles: true,
                    cancelable: true,
                    touches: [new Touch({ identifier: 1, target: list, clientX: x, clientY: y })],
                    changedTouches: [new Touch({ identifier: 1, target: list, clientX: x, clientY: y })],
                });

                list.dispatchEvent(mk('touchstart', startY));
                for (let i = 1; i <= 6; i++) {
                    list.dispatchEvent(mk('touchmove', startY + i * 20));
                }
                list.dispatchEvent(mk('touchend', startY + 120));
            }"""
        )
        page.wait_for_timeout(400)

        after_pull = page.evaluate(
            """() => ({
                drawerOpen: !!document.querySelector('aside'),
                scrollTop: (() => {
                    const l = document.querySelector('aside .list');
                    return l ? l.scrollTop : null;
                })(),
            })"""
        )
        print(f"  после потягивания вниз: {json.dumps(after_pull, ensure_ascii=False)}")

        if not after_pull["drawerOpen"]:
            failures.append("drawer закрылся при потягивании вниз — баг не исправлен")

        # Программная прокрутка списка работает
        scrolled = page.evaluate(
            """() => {
                const list = document.querySelector('aside .list');
                list.scrollTop = 300;
                return { scrollTop: list.scrollTop };
            }"""
        )
        print(f"  прокрутка списка: {scrolled}")
        if scrolled["scrollTop"] < 100:
            failures.append("список не прокручивается программно")

        # Закрытие кнопкой работает
        page.click('aside button[aria-label="Закрыть"]')
        page.wait_for_timeout(400)
        closed = page.locator("aside").count() == 0
        print(f"  закрытие кнопкой ✕: {'работает' if closed else 'НЕ работает'}")
        if not closed:
            failures.append("кнопка ✕ не закрывает drawer")

        # ---------- 3. Подсказка «потерял место» ----------
        print("\n=== 3. подсказка «потерял место» ===")

        # Быстрый поиск (меньше 3 с) не должен показывать подсказку
        page.evaluate(
            """async () => {
                const s = await import('/src/stores/tracker.ts');
                s.setTrackerState({ searchMode: true });
            }"""
        )
        page.wait_for_timeout(1000)
        early = page.locator(".search-hint").count()
        print(f"  через 1 с (быстрый поиск): {'показана' if early else 'не показана (верно)'}")
        if early > 0:
            failures.append("подсказка показалась раньше 3 секунд")

        # Через 3+ секунды должна появиться
        page.wait_for_timeout(2600)
        shown = page.locator(".search-hint").count()
        print(f"  через 3.6 с: {'показана' if shown else 'НЕ показана'}")
        if shown == 0:
            failures.append("подсказка не появилась после 3 секунд")

        # Проверяем позицию и размеры
        if shown:
            hint = page.evaluate(
                """() => {
                    const el = document.querySelector('.search-hint');
                    const r = el.getBoundingClientRect();
                    const cs = getComputedStyle(el);
                    const reader = document.querySelector('.reader');
                    const rr = reader.getBoundingClientRect();
                    return {
                        top: Math.round(r.top),
                        bottom: Math.round(r.bottom),
                        height: Math.round(r.height),
                        readerTop: Math.round(rr.top),
                        position: cs.position,
                        bg: cs.backgroundColor,
                        clickable: cs.pointerEvents !== 'none',
                        tag: el.tagName,
                        // Подсказка не должна заходить на область чтения
                        overlapsText: r.bottom > rr.top + 1,
                    };
                }"""
            )
            print("  геометрия:", json.dumps(hint, ensure_ascii=False))

            # В потоке, а не fixed: подсказка сдвигает текст, а не закрывает его
            if hint["position"] not in ("static", "relative"):
                failures.append(f"подсказка должна быть в потоке: {hint['position']}")
            if hint["height"] > 44:
                failures.append(f"подсказка слишком высокая: {hint['height']}px (нужно ≤40)")
            if hint["overlapsText"]:
                failures.append("подсказка перекрывает область чтения")
            if not hint["clickable"]:
                failures.append("подсказка не кликабельна — нельзя закрыть")
            if hint["tag"] != "BUTTON":
                failures.append(f"подсказка не кнопка: {hint['tag']}")

        # Автоскрытие через 5 секунд
        page.wait_for_timeout(5200)
        after_timeout = page.locator(".search-hint").count()
        print(f"  через ~9 с (автоскрытие): {'ещё видна' if after_timeout else 'скрылась'}")
        if after_timeout > 0:
            failures.append("подсказка не скрылась автоматически через 5 секунд")

        browser.close()

    print("\n" + "=" * 60)
    if failures:
        print("ПРОВАЛЫ:")
        for f in failures:
            print("  -", f)
        return 1

    print("ВСЕ ТРИ ИСПРАВЛЕНИЯ ПРОЙДЕНЫ")
    return 0


if __name__ == "__main__":
    sys.exit(main())
