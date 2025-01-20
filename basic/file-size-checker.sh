#!/bin/bash

echo "enter the file with valid path"
read file

if [ ! -f $file ] 
then
    echo "error invalid file or path... rerun the script"
    exit 1
fi

echo " enter the threshold size in KB"
read threshold

size=$(du -k $file | awk '{print $1 }')

if [ "$size" -gt "$threshold" ]
then
    echo "File size: $size KB warning.Exceeds threshold of $threshold KB!"
else
    echo "File size: $size KB, threshold is $threshold KB"
fi
