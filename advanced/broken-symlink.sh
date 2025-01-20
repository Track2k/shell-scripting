#!/bin/bash

echo "Create a blank txt file create a symlink using ln -s and use that directory to test or can try on any dir"
echo ""
echo "provide directory path"
read dir_path

log_file="$HOME/logs1/broken_symlinks.log"

find -L "$dir_path" -type l > "$log_file"

echo "Broken symbolic links have been logged to $log_file"
