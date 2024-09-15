#!/bin/bash

# Create the markdown file
touch 1.pdf2table.md

# Append table header
echo "---" >> 1.pdf2table.md
echo "layout: post" >> 1.pdf2table.md
echo "title: IRS Docs and Subject Table" >> 1.pdf2table.md
echo "---" >> 1.pdf2table.md
echo " " >> 1.pdf2table.md
#echo "|Document No.|Title|" >> 1.pdf2table.md
#echo "|:-|:-|" >> 1.pdf2table.md

# Loop through all PDF files
i=0
for filename in *.pdf; do
  # Extract filename and title
  name="${filename%.*}"
  title=$(pdfinfo "$filename" | grep "Subject:")

  # Create numbered list
  row="1. "
  row+="$name"  # file name no ext
  row+=", <a href=\"/irs.ea/assets/pdfs/"$filename\" download>"  # Link download attribute
  row+="$title</a>"

  # Append row to the table
  echo "$row" >> 1.pdf2table.md

  # Increment counter
  i=$((i + 1))
done

# Print completion message
echo "DONE"
