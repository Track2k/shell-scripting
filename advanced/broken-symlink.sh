#!/bin/bash

echo "check on a logs1 dir as it contains a broken symlink or test on any other dir"
echo ""
echo "provide directory path"
read dir_path

log_file="$HOME/logs1/broken_symlinks.log"

find -L "$dir_path" -type l > "$log_file"

echo "Broken symbolic links have been logged to $log_file"
