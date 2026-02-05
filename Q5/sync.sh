#!/bin/bash

# Check if both directories exist
if [ ! -d dirA ] || [ ! -d dirB ]; then
  echo "Error: dirA or dirB does not exist"
  exit 1
fi

echo "Files only in dirA:"
echo "-------------------"
ls dirA > a.txt
ls dirB > b.txt
comm -23 <(sort a.txt) <(sort b.txt)

echo
echo "Files only in dirB:"
echo "-------------------"
comm -13 <(sort a.txt) <(sort b.txt)

echo
echo "Comparing common files:"
echo "-----------------------"

for file in $(comm -12 <(sort a.txt) <(sort b.txt))
do
  cmp -s "dirA/$file" "dirB/$file"
  if [ $? -eq 0 ]; then
    echo "$file : Contents match"
  else
    echo "$file : Contents differ"
  fi
done

rm a.txt b.txt
