#!/bin/bash

# Путь к каталогу, в котором нужно выполнить замену
search_dir="/path/to/search/directory"

# Текст для поиска и замены
search_text="old_text"
replace_text="new_text"

# Найти и заменить текст во всех файлах в указанном каталоге
find "${search_dir}" -type f -exec sed -i "s/${search_text}/${replace_text}/g"
{} \;

echo "Замена выполнена успешно!"


