#!/bin/bash

echo "Provide the input file use network-tester-ips.txt in current dir"
read input_file

if [ ! -f "$input_file" ]; then
    echo "failed...rerun the script, failed to read the file"
    exit 1
fi

log_file="$HOME/logs1/ping_results.log"

while IFS= read -r line; do

    if [ -z "$line" ]; then
        continue
    fi

    if ping -c 1 "$line" &> /dev/null; then
        echo "$(date) : $line is reachable" >> "$log_file"
    else
        echo "$(date): $line is unreachable" >> "$log_file"
    fi
done < "$input_file"

echo "Ping test completed. results logged in $log_file."
