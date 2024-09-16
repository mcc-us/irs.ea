#!/bin/bash

# Get the current directory
current_dir=$(pwd)

# Find all PDF files in the current directory
pdf_files=$(find "$current_dir" -type f -name "*.pdf")

# Create a new file called "1.pdf.title.txt" or append to it if it exists
touch 1.pdf.title.txt

# Iterate through each PDF file
for pdf_file in $pdf_files; do
  # Extract the title using pdfinfo
  title=$(pdfinfo "$pdf_file" | grep "Title:" | awk '{print $2}')

  # Append the title to "1.pdf.title.txt"
  echo "$title" >> 1.pdf.title.txt
done
