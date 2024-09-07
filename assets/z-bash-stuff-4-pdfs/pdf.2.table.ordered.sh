#!/bin/bash

# Get the current directory
current_dir=$(pwd)

# Find all PDF files in the current directory and sort them alphanumerically
pdf_files=$(find "$current_dir" -type f -name "*.pdf" -print0 | xargs -0 ls -v)

# Create a new file called "pdf.txt" or append to it if it exists
touch pdf.txt

# Iterate through each PDF file
for pdf_file in $pdf_files; do
  # Extract the filename without extension
  filename="${pdf_file%.*}"

  # Create the text line
  line="| $filename | [$filename](/$pdf_file) |\n"

  # Append the line to "pdf.txt"
  echo "$line" >> pdf.txt
done
