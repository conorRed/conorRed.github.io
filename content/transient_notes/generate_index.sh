#!/bin/bash

output_file="./html/output.html"

# Clear the output file
> "$output_file"

# Loop through each Markdown file in the directory
md_files=$(ls -lt *_inbox.md)
for md_file in $(find *_inbox.md -mtime -50); do
    # Convert the Markdown file to HTML fragment using pandoc
    html_fragment=$(pandoc "$md_file" -s --template=$XDG_DATA_HOME/pandoc/easy-template.html) 

    # Append the HTML fragment to the output file
    echo "$html_fragment" >> "$output_file"
done
