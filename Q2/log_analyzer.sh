#!/bin/bash

# 1. Accept exactly one command-line argument
if [ $# -ne 1 ]; then
  echo "Error: Please provide exactly one log file as argument."
  exit 1
fi

logfile="$1"

# 2. Validate file exists and is readable
if [ ! -e "$logfile" ]; then
  echo "Error: File does not exist."
  exit 1
fi

if [ ! -r "$logfile" ]; then
  echo "Error: File is not readable."
  exit 1
fi

# 3. Count total log entries
total_entries=$(wc -l < "$logfile")

info_count=$(grep -c " INFO " "$logfile")
warning_count=$(grep -c " WARNING " "$logfile")
error_count=$(grep -c " ERROR " "$logfile")

# 4. Most recent ERROR message
recent_error=$(grep " ERROR " "$logfile" | tail -1)

# 5. Generate report file with date
date=$(date +%F)
report_file="logsummary_$date.txt"

{
  echo "Log Summary Report"
  echo "Date: $date"
  echo "--------------------------------"
  echo "Total log entries: $total_entries"
  echo "INFO messages: $info_count"
  echo "WARNING messages: $warning_count"
  echo "ERROR messages: $error_count"
  echo
  echo "Most recent ERROR message:"
  echo "$recent_error"
} > "$report_file"

# Display report on terminal
cat "$report_file"
