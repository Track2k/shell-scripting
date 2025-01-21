#!/bin/bash

log_file="$HOME/logs1/server_health.log"

echo "CPU threshold set to 80" >> $log_file
CPU=80
MEMORY=80
SERVICES=("ssh" "brave" "snapd")

cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
echo "CPU Usage is $cpu_usage" >> $log_file
if (( $(echo "$cpu_usage > $CPU" | bc -l) )); then
    echo "CPU exceeds $CPU" >> $log_file
fi

echo "Memory threshold set to 80" >> $log_file
memory_usage=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
echo "Memory usage is $memory_usage" >> $log_file
if (( $(echo "$memory_usage > $MEMORY" | bc -l) )); then
    echo "Memory exceeds $MEMORY" >> $log_file
fi

for service in "${SERVICES[@]}"; do
    if systemctl is-active --quiet "$service"; then
        echo "$service is running" >> "$log_file"
    else
        echo "$service is not running" >> "$log_file"
    fi
done
