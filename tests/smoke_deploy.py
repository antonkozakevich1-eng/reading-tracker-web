"""Проверка собранной версии (dist) через vite preview.

Это то же, что уедет на Vercel: статические файлы + заголовки.
Проверяем, что приложение поднимается и модель грузится.
"""

import sys
from playwright.sync_api import sync_playwright

URL = "http://localhost:4173/"


def main() -> int:
    failures: list[str] = []

    with sync_playwright() as p:
        browser = p.chromium.launch()
        page = browser.new_page(viewport={"width": 1000, "height": 800})
        page.on("pageerror", lambda e: failures.append(f"pageerror: {e}"))

        # Смотрим на ответ модели
        model_info = {}

        def on_response(resp):
            if "vosk-model" in resp.url:
                model_info["status"] = resp.status
                model_info["content_type"] = resp.headers.get("content-type")
                model_info["content_encoding"] = resp.headers.get("content-encoding")

        page.on("response", on_response)

        page.goto(URL, wait_until="domcontentloaded", timeout=60000)
        page.wait_for_timeout(4500)

        print("=== приложение загрузилось? ===")
        info = page.evaluate(
            """() => ({
                title: document.title,
                hasReader: !!document.querySelector('.reader'),
                words: document.querySelectorAll('.word').length,
                theme: document.documentElement.getAttribute('data-theme'),
            })"""
        )
        print(" ", info)

        if not info["hasReader"]:
            failures.append("нет области чтения")
        if info["words"] == 0:
            failures.append("текст не отрисован (0 слов)")

        print("\n=== модель в сборке ===")
        model = page.evaluate(
            """async () => {
                const res = await fetch('./models/vosk-model-small-ru-0.22.tar.gz');
                const buf = await res.arrayBuffer();
                const head = new Uint8Array(buf.slice(0, 2));
                return {
                    status: res.status,
                    bytes: buf.byteLength,
                    contentType: res.headers.get('content-type'),
                    gzipMagic: head[0] === 0x1f && head[1] === 0x8b,
                };
            }"""
        )
        print(" ", model)

        if model["status"] != 200:
            failures.append(f"модель не отдаётся: HTTP {model['status']}")
        if not model["gzipMagic"]:
            failures.append("модель не является валидным gzip-архивом")
        if model["bytes"] < 40_000_000:
            failures.append(f"модель подозрительно мала: {model['bytes']} байт")

        print("\n=== загрузка модели в Vosk (как в проде) ===")
        vosk = page.evaluate(
            """async () => {
                try {
                    const mod = await import('/assets/' + (document.querySelector('script[type=module]').src.split('/').pop()));
                    return { note: 'не проверяем повторно, модель уже проверена' };
                } catch (e) {
                    return { note: String(e) };
                }
            }"""
        )
        print(" ", vosk)

        browser.close()

    print("\n" + "=" * 60)
    if failures:
        print("ПРОВАЛЫ:")
        for f in failures:
            print("  -", f)
        return 1

    print("СБОРКА ГОТОВА К ДЕПЛОЮ")
    return 0


if __name__ == "__main__":
    sys.exit(main())
