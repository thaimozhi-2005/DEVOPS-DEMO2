#!/bin/bash
if ping -c 3 google.com > /dev/null 2>&1; then
  echo "Online"
else
  echo "Offline"
fi
