#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Error: Provide exactly one argument"
  exit 1
fi

if [ -f "$1" ]; then
  wc "$1"
elif [ -d "$1" ]; then
  echo "Total files: $(ls -1 "$1" | wc -l)"
  echo ".txt files: $(ls "$1"/*.txt 2>/dev/null | wc -l)"
else
  echo "Error: Path does not exist"
fi
