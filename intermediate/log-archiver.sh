#!/bin/bash

echo "Please enter the directory path (Make a /var/log copy and pass that directory)"
read dir_path

if [ ! -d "$dir_path" ]; then
    echo "The provided path is not a valid directory."
    exit 1
fi

arch_file="$HOME/logs1/logs-archive.tar.gz"

find "$dir_path" -name "*.log" -type f -mtime +7 -print0 | tar --null -czf "$arch_file" --files-from=- && \
find "$dir_path" -name "*.log" -type f -mtime +7 -delete

echo "Archived and deleted log files older than 7 days into $arch_file"
