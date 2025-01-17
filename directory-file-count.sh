#!/bin/bash

echo "enter the directory path"


read dir_input

if [ ! -d "$dir_input" ]
then
    echo "not a directory, please run the script again"
    exit 1
fi

files=$(find "$dir_input" -maxdepth 1 -type f | wc -l)


dir=$(find "$dir_input" -maxdepth 1 -type d | wc -l)

echo "Files: $files"
echo "subdirectories: $(expr $dir - 1)" 
