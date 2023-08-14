#!/bin/bash

source_file="/path/to/source/file.txt"
backup_dir="/path/to/backup/directory"

backup_name="$(basename "$source_file" .txt)_$(date +%Y%m%d%H%M%S).txt"

cp "$source_file" "$backup_dir/$backup_name"

echo "Backup created: $backup_dir/$backup_name"

