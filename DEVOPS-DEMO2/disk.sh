#!/bin/bash
#disk usage threshold and warn
THRESHOLD=80
USAGE=$(df -h | awk '$NF == "/" {print $5}' | tr -d '%')

if [ $USAGE -gt $THRESHOLD ]; then
  echo "WARNING: Disk usage exceeds $THRESHOLD% ($USAGE%)"
else
  echo "Disk usage is below $THRESHOLD% ($USAGE%)"
fi
