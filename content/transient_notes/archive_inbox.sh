#!/bin/bash

source_folder="."
destination_folder="./archive/"

# Move files greater than 20 days since last modification
find "$source_folder" -type f -name "*_inbox.md" -mtime 20|
while read -r file; do
  echo "Moving file: $file : $destination_folder"
  cp "$file" "$destination_folder"
done
