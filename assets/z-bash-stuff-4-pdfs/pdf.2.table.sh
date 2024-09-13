#!/bin/bash

# Get the directory where the script is located
directory=$(dirname "$0")

touch file_list.txt

# Find all PDF files in the directory
pdf_files=$(find "$directory" -type f -name "*.pdf")

# Create a new text file to store the results
output_file="$directory/file_list.txt"
subject=$(pdfinfo "$pdf_file" | grep "Subject:         " | awk '{print}')

# Write the header to the output file
echo "| filename | [title](/filename.ext) |" > "$output_file"

# Iterate over each PDF file
for pdf_file in $pdf_files; do
  # Extract the filename without extension
  filename=$(basename "$pdf_file" .pdf)

  # Write the line to the output file
  echo "| $filename | [title](/$pdf_file) |" >> "$output_file"
done

