#!/bin/bash

# Loop through all files in the current directory
for filename in *.pdf; do
  # Extract the filename without the extension
  filename_no_ext="${filename%.pdf}"

  # Create an empty markdown file with "view." prepended to the filename
#  touch "$filename_no_ext.md"

  # Build the markdown content
  content="---\n"
  content+="layout: post\n"
  content+="title: $filename_no_ext.pdf\n"
  content+="---\n\n"
  content+="<div class=\"pdf-container\">\n"
  content+="<iframe src=\"/irs.ea/assets/pdfs/$filename_no_ext\" height=\"600\" width=\"100%\" allowFullScreen=\"true\"></iframe>\n"
  content+="</div>\n"

  # Write the content to the markdown file
  echo -e "$content" >> "$filename_no_ext.md"
done

echo "DONE" 
