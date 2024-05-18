#!/bin/bash
cd output/html
output_html="$(basename -- "$1" .md).html"
echo "Creating html document $output_pdf in $(pwd)"
pandoc -s --toc --template=chatgpt.html "$1" -o "$output_html"
