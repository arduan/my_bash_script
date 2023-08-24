#!/bin/bash

# Удаление локальной ветки
git branch -d feature-branch

# Удаление удаленной ветки
git push origin --delete feature-branch

# Переименование ветки
git branch -m old-branch new-branch

