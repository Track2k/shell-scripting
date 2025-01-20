#!/bin/bash

log_file="$HOME/logs1/disk_usage_monitor.log"

threshold=80

df -h | awk 'NR>1 {print $5 " " $1}' | while read usage partition; do
    usage_value=${usage%\%}

    if [ "$usage_value" -gt "$threshold" ]; then
        echo "$(date) - Warning: disk usage on $partition is at $usage" >> "$log_file"
        echo "Warning: disk usage on $partition is at $usage"
    fi
done