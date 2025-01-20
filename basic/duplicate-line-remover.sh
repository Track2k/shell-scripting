#!/bin/bash

if [ ! -d ~/logs1 ]; then
    echo "directory not present, creating....."
    mkdir ~/logs1
fi 
    echo "Enter the file path"

    read file_path

    file_dir=$(dirname $file_path)

    sort -n $file_path | uniq > "$HOME/logs1/$(basename $file_path)-log.txt"