#!/bin/bash
THRESHOLD=100000  # 100MB in KB
while true; do
    FREE_MEM=$(free | grep Mem | awk '{print $4}')
    if [ "$FREE_MEM" -lt "$THRESHOLD" ]; then
        echo "Memory low: $(date)" 
fi
done
