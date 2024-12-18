#!/bin/bash
THRESHOLD=100000  # 100MB in KB
while true; do
    FREE_MEM=$(free | grep Mem | awk '{print}')
    if [ "$FREE_MEM" -lt "$THRESHOLD" ]; then
        echo "Memory low: $(date)" | mail -s "Memory Alert" michaelndoh9@gmail.com.com
    fi
    sleep 60  # Check every 10 minutes
done
