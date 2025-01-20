#!/bin/bash

echo "enter the directory path"
read dir_path

echo "enter the username"
read username

log_file="$HOME/logs1/file_ownership_log.txt"

if [ ! -d "$dir_path" ]; then
    echo "directory path is invalid, rerun the script..."
    exit 1
fi

echo "Files not owned by user '$username':" >> "$log_file"
for file in "$dir_path"/*; do
    if [ ! -f "$file" ]; then
        continue
    fi

    owner=$(ls -l "$file" | awk '{print $3}')

    if [ "$owner" != "$username" ]; then
        echo "$file (owner is $owner)" >> "$log_file"
    fi
done


