#!/bin/bash


#This script checks for duplicates in a file and remove it, stores it,
if [ ! -d ~/uniq_files ]; then
    echo "directory not present, creating....."
    mkdir ~/uniq_files
fi 
    echo "Enter the file path"

    read file_path

    file_dir=$(dirname $file_path)

    sort -n $file_path | uniq > $file_dir/$(basename $file_path)-1.txt