#!/bin/bash
echo Введите путь к репозиторию github
read github

# Создание нового репозитория
mkdir my_repo
cd my_repo
git init

# Клонирование существующего репозитория
git clone $github

