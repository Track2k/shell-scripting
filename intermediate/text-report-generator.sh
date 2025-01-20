#!/bin/bash

if [ ! -f "$1" ]; then
    echo "Please provide a log file"
    exit 1
fi

grep -i "error" "$1" | awk '{count[$0]++} END {for (err in count) print count[err], "occurrences:", err}'