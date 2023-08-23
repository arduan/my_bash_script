#!/bin/bash

echo Введите имя ветки:
read branch
# Получение последних изменений из удаленного репозитория
git pull origin main

# Слияние веток (например, слияние feature-branch в main)
git checkout main
git merge $branch

