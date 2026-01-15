# RPCSX v20260115-000000 — Покращений реліз з підтримкою Windows ARM64 та оптимізаціями продуктивності

## Нові збірки
- Додано збірку для Windows ARM64: `librpcsx-windows-arm64.dll`
- Оновлені збірки для Android:
  - `librpcsx-android-arm64-v8a-armv8-a.so`
  - `librpcsx-android-arm64-v8a-armv8.1-a.so`
  - `librpcsx-android-arm64-v8a-armv8.2-a.so`
  - `librpcsx-android-arm64-v8a-armv8.4-a.so`
  - `librpcsx-android-arm64-v8a-armv8.5-a.so`
  - `librpcsx-android-arm64-v8a-armv9-a.so`
  - `librpcsx-android-arm64-v8a-armv9.1-a.so`
  - `librpcsx-android-x86_64-x86-64.so`

## Оптимізації продуктивності (адаптовано з RPCS3 та RPCSX-UI-Android)
- **JIT-компіляція**: Впроваджено динамічну компіляцію коду з використанням ASMJIT для ARM64 та x86_64, що покращує швидкодію емуляції.
- **NCE ARM64 JIT**: Інтегровано NCE (Native Code Execution) JIT для ARM64 з RPCSX-UI-Android, що забезпечує кращу продуктивність на ARMv9 пристроях.
- **Багатопоточна обробка**: Додано паралельну компіляцію модулів з використанням потоків, що зменшує час ініціалізації.
- **Оптимізація кешування**: Покращено кешування інструкцій та даних для зменшення затримок.
- **SIMD інструкції**: Використано SIMD операції для векторних обчислень, що підвищує продуктивність на сучасних процесорах.
- **Управління потоками**: Оптимізовано пріоритети та афінітет ядер для кращого використання системних ресурсів.

## Виправлення та покращення
- Покращена стабільність на Android пристроях з ARM64 та ARMv9.
- Виправлено помилки в емуляції SPU та PPU.
- Дрібні оптимізації для зменшення споживання енергії.
- Інтеграція патчів з RPCSX-UI-Android для кращої сумісності з UI додатком.

## Оновлення через додаток
Щоб оновити RPCSX через додаток, вставте це посилання в налаштування оновлень:
https://github.com/nikitaolenych-byte/rpcsx-build/releases/tag/v20260115-000000

Після вставки посилання в додатку RPCSX-UI-Android розпочнеться автоматичне завантаження та встановлення оновлення.

Детальніше: https://github.com/RPCSX/rpcsx/commit/e27926d6296e2ce4bd5b0775cb4e4423d9e7cdb6

Для інтеграції NCE JIT: https://github.com/nikitaolenych-byte/rpcsx-ui-android#integrate-nce-jit-into-rpcsx-core