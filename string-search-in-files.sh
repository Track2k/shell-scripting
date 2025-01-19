#!/bin/bash

echo "Enter the directory path"
read dir_path

if [ ! -d "$dir_path" ]
then
    echo "directory $dir_path does not exist."
    exit 1
fi

echo "Enter the string"
read search


grep -rn "$dir_path" -e "$search" --include="*.log"

if [ $? -ne 0 ]
then
    echo "No matches found for $search in .log files."
fi
