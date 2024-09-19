#!/bin/bash

# This works for MCC 9/17/24

# Out put dir
output_dir="/home/mcc/Websites/irs.ea/_docs"

# Loop through all files in the current directory
for filename in *.pdf; do
  # Extract the filename without the extension
  filename_no_ext="${filename%.pdf}"

  # Create the markdown file in the output directory
  markdown_file="$output_dir/view.$filename_no_ext.md"
  touch "$markdown_file"

  # Build the markdown content
  content="---\n"
  content+="layout: post\n"
  content+="title: $filename_no_ext.pdf\n"
  content+="---\n\n"
  content+="<div class=\"pdf-container\">\n"
  content+="<iframe src=\"/irs.ea/assets/pdfs/$filename\" height=\"600\" width=\"100%\" allowFullScreen=\"true\"></iframe>\n"
  content+="</div>\n"

  # Write the content to the markdown file
  echo -e "$content" >> "$markdown_file"
done

echo "DONE" 
