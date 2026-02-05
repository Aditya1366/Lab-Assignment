#!/bin/bash

# Check if emails.txt exists
if [ ! -f emails.txt ]; then
  echo "Error: emails.txt file not found"
  exit 1
fi

# Extract valid emails
grep -E '^[a-zA-Z0-9]+@[a-zA-Z]+\.com$' emails.txt > valid_temp.txt

# Remove duplicates from valid emails
sort valid_temp.txt | uniq > valid.txt

# Extract invalid emails
grep -Ev '^[a-zA-Z0-9]+@[a-zA-Z]+\.com$' emails.txt > invalid.txt

# Remove temporary file
rm valid_temp.txt

echo "Email cleaning completed."
