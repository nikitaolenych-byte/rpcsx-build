#!/bin/bash
# Скрипт для автоматичного завантаження всіх файлів з релізу RPCSX та підготовки до оптимізації

RELEASE_URL="https://github.com/RPCSX/rpcsx-build/releases/download/v20251011-e27926d"
FILES=(
  "librpcsx-android-arm64-v8a-armv8-a.so"
  "librpcsx-android-arm64-v8a-armv8.1-a.so"
  "librpcsx-android-arm64-v8a-armv8.2-a.so"
  "librpcsx-android-arm64-v8a-armv8.4-a.so"
  "librpcsx-android-arm64-v8a-armv8.5-a.so"
  "librpcsx-android-arm64-v8a-armv9-a.so"
  "librpcsx-android-arm64-v8a-armv9.1-a.so"
  "librpcsx-android-x86_64-x86-64.so"
)

mkdir -p original_release
cd original_release

echo "Завантаження файлів релізу..."
for file in "${FILES[@]}"; do
  echo "-> $file"
  curl -LO "$RELEASE_URL/$file"
done

echo "Всі файли завантажено у $(pwd)"
echo "Тепер ви можете замінити ці файли на оптимізовані версії або зібрати нові з патчами."
