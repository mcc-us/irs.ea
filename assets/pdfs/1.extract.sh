#!/bin/bash

# Create the markdown file
touch 1.pdf2table.md

# Append table header
echo "|Document No.|Title|" >> 1.pdf2table.md
echo "|---|---|" >> 1.pdf2table.md

# Loop through all PDF files
i=0
for filename in *.pdf; do
  # Extract filename and title
  name="${filename%.*}"
  title=$(pdfinfo "$filename" | grep Title: | cut -d: -f2- | tr -d '\n\r')

  # Create table row
  row="|"
  row+="$((i + 1))"  # Document number (starting from 1)
  row+="|<a href=\"$filename\" download>"  # Link with download attribute
  row+="$title</a>|"

  # Append row to the table
  echo "$row" >> 1.pdf2table.md

  # Increment counter
  i=$((i + 1))
done

# Print completion message
echo "DONE"
