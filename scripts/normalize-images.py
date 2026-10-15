#!/usr/bin/env python3
"""Нормализация сгенерированных иллюстраций.

Что делает:
  1. toc-ornament — обрезает поля и оставляет только полосу меандра,
     растягивая её на всю ширину (нужна узкая декоративная лента).
  2. Все картинки — уменьшает до нужного размера и сжимает в WebP,
     чтобы не тащить 12 МБ в браузер.

Запуск:
  python scripts/normalize-images.py
"""

import os
import sys
from pathlib import Path

try:
    from PIL import Image
except ImportError:
    print("Нужен Pillow: pip install Pillow")
    sys.exit(1)

ROOT = Path(__file__).resolve().parent.parent
IMAGES = ROOT / "public" / "images"

# Максимальная ширина и качество для веба
MAX_WIDTH = 1200
QUALITY = 82


def find_content_band(img: Image.Image) -> tuple[int, int]:
    """Находит вертикальные границы полосы с рисунком.

    Орнамент получился на пергаментном фоне с большими полями.
    Ищем строки, где есть заметный контраст (тёмный пиксель на светлом).
    """
    gray = img.convert("L")
    w, h = gray.size
    px = gray.load()

    # Порог: меандр заметно темнее фона
    threshold = 150

    rows_with_content = []
    for y in range(h):
        dark = 0
        # Сэмплируем каждые 8 пикселей — быстрее и достаточно точно
        for x in range(0, w, 8):
            if px[x, y] < threshold:
                dark += 1
                if dark > 3:  # несколько тёмных пикселей в строке — это рисунок
                    rows_with_content.append(y)
                    break

    if not rows_with_content:
        return 0, h

    return rows_with_content[0], rows_with_content[-1] + 1


def normalize_ornament(path: Path) -> None:
    """Обрезает орнамент до полосы и делает её широкой лентой."""
    img = Image.open(path).convert("RGB")
    w, h = img.size

    top, bottom = find_content_band(img)
    band_h = bottom - top

    print(f"    полоса найдена: y={top}..{bottom} (высота {band_h} из {h})")

    # Небольшой запас сверху и снизу
    pad = max(2, band_h // 10)
    top = max(0, top - pad)
    bottom = min(h, bottom + pad)

    cropped = img.crop((0, top, w, bottom))

    # Соотношение сторон ленты: примерно 12:1
    target_h = max(64, cropped.width // 12)
    resized = cropped.resize((cropped.width, target_h), Image.LANCZOS)

    resized.save(path, "PNG", optimize=True)
    print(f"    -> {resized.size[0]}x{resized.size[1]}")


def compress(path: Path, max_width: int = MAX_WIDTH) -> None:
    """Уменьшает и сжимает картинку, сохраняя рядом .webp."""
    img = Image.open(path)

    if img.width > max_width:
        ratio = max_width / img.width
        new_size = (max_width, round(img.height * ratio))
        img = img.resize(new_size, Image.LANCZOS)

    # Основной формат для веба
    webp = path.with_suffix(".webp")
    img.convert("RGB").save(webp, "WEBP", quality=QUALITY, method=6)

    before = path.stat().st_size
    after = webp.stat().st_size
    print(
        f"    {webp.name}: {img.size[0]}x{img.size[1]}, "
        f"{before / 1024 / 1024:.2f} -> {after / 1024:.0f} КБ"
    )


def main() -> int:
    if not IMAGES.exists():
        print(f"Нет папки {IMAGES} — сначала запустите генерацию картинок")
        return 1

    files = sorted(IMAGES.glob("*.png"))
    if not files:
        print("PNG-файлов не найдено")
        return 1

    print(f"Нормализация {len(files)} картинок\n")

    for path in files:
        print(f"  {path.name}")

        if path.stem == "toc-ornament":
            normalize_ornament(path)

        compress(path)

    total = sum(f.stat().st_size for f in IMAGES.glob("*.webp"))
    print(f"\nWebP суммарно: {total / 1024 / 1024:.2f} МБ")
    return 0


if __name__ == "__main__":
    sys.exit(main())
