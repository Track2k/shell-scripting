#!/bin/bash

echo "enter the directory path"
read dir_path

echo "enter the username"
read username


if [ ! -d "$dir_path" ]; then
    echo "directory path is invalid, rerun the script..."
    exit 1
fi

echo "Files not owned by user '$username':"
for file in "$dir_path"/*; do
    if [ ! -f "$file" ]; then
        continue
    fi

    owner=$(ls -l "$file" | awk '{print $3}')

    if [ "$owner" != "$username" ]; then
        echo "$file (owner is $owner)"
    fi
done


