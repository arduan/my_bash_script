#!/bin/bash

# Список пакетов для установки
packages=("package1" "package2" "package3")

# Обновить список пакетов
sudo apt update

# Установить необходимые пакеты
for package in "${packages[@]}"; do
		    sudo apt install -y "$package"
	done

	echo "Установка завершена!"

