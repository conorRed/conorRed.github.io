#!/bin/bash
cd output/pdf
output_pdf="$(basename -- "$1" .md).pdf"
echo "Creating pdf document $output_pdf in $(pwd)"
pandoc -s --template=tufte.tex "$1" -o "$output_pdf"
