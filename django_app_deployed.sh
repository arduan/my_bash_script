#!/bin/bash

# Путь к директории с вашим Django-приложением
APP_DIR="/path/to/your/django/app"

# Активируйте виртуальное окружение (если используется)
# source /path/to/venv/bin/activate

# Обновление кода из репозитория (предполагается, что используется Git)
cd "$APP_DIR"
git pull origin master

# Установка/обновление зависимостей
pip install -r requirements.txt

# Миграции базы данных
python manage.py migrate

# Сборка статических файлов
python manage.py collectstatic --noinput

# Перезапуск Gunicorn сервера
systemctl restart gunicorn

# Обновление конфигурации Nginx (предполагается, что Nginx настроен для
# проксирования к Gunicorn)
systemctl reload nginx

echo "Django app deployed successfully."

