#!/bin/bash
echo Введите имя ветки:
read new_feature
# Создание новой ветки и переключение на нее
git checkout -b $new_feature

# Переключение на существующую ветку
git checkout master

