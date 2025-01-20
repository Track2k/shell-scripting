#!/bin/bash

echo "enter the directory"
read directory


if cd "$directory"; then

    for file in *.txt; do
        if [ -f "$file" ];then
            chmod 644 "$file"  #predefined rule
            echo "changed the permissions of $file to 644"
        fi
    done
else
    echo "directory not found"
fi