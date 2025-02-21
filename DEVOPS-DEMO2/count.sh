#!/bin/bash

# Count Files in Directory
DIRECTORY="/home/thaimozhi2005/Desktop"  # Replace with the actual directory path

COUNT=$(ls -lA $DIRECTORY | wc -l)

echo "Number of files in $DIRECTORY: $COUNT"
