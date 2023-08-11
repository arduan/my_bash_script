#!/bin/bash

# Путь к каталогу, который нужно скопировать
source_dir="/path/to/source/directory"

# Путь к каталогу, куда будут сохраняться резервные копии
backup_dir="/path/to/backup/directory"

# Создание уникального имени для резервной копии с текущей датой и временем
backup_name="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

# Создание резервной копии
tar -czvf "${backup_dir}/${backup_name}" "${source_dir}"

echo "Резервная копия создана: ${backup_dir}/${backup_name}"

