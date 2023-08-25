#!/bin/bash

# Добавление всех измененных файлов
git add .

# Коммит изменений
echo Добавте запись в commit
read msg
git commit -m "$msg"

