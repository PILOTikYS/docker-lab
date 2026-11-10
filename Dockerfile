# 1. Базовый образ (в нем уже есть Linux и Python 3.12)
FROM python:3.12-slim

# 2. Рабочая директория внутри контейнера
WORKDIR /app

# 3. Копируем наш скрипт в контейнер
COPY api_check.py .

# 4. Команда, которая запустится при старте контейнера
ENTRYPOINT ["python3", "api_check.py"]

