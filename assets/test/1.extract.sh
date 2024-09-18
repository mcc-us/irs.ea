#!/bin/bash

# Create the markdown file
touch 1.pdf2table.md

# Append table header
echo "---" >> 1.pdf2table.md
echo "layout: post" >> 1.pdf2table.md
echo "title: IRS Docs and Subject Table" >> 1.pdf2table.md
echo "---" >> 1.pdf2table.md
echo " " >> 1.pdf2table.md
echo "|Document No.|Subject|" >> 1.pdf2table.md
echo "|:-|:-|" >> 1.pdf2table.md

# Loop through all PDF files
i=1
for filename in *.pdf; do
  # Extract filename and subject
  name="${filename%.*}"
  subject=$(pdfinfo "$filename" | grep "Subject:")

  # Create numbered list
  row="|"
  row+="$name"  # file name no ext
  row+="|"  # Link download attribute
  row+="$subject"
  row+="|"
  
  # Append row to the table
  echo "$row" >> 1.pdf2table.md



done

# Print completion message
echo "DONE"
