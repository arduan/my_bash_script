#!/bin/bash

# Введите путь к локальному файлу через read
read -p "Enter the path to the local file: " local_file

# SSH-адрес удаленного компьютера
remote_address="username@remote_host:/path/to/remote/directory/"

# Копирование файла с использованием scp
scp "$local_file" "$remote_address"

echo "File copied successfully."

