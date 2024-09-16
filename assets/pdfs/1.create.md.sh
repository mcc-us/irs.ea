#!/bin/bash

# Loop through all files in the current directory
for filename in *.pdf; do
  # Create an empty markdown file with "view." prepended to the filename
  touch "view.$filename.md"

  # Build the markdown content
  content="---\n"
  content+="layout: post\n"
  content+="title: $filename\n"
  content+="---\n\n"
  content+="<div class=\"pdf-container\">\n"
  content+="<iframe src=\"irs.ea/assets/pdfs/$filename\" height=\"600\" width=\"100%\" allowFullScreen=\"true\"></iframe>\n"
  content+="</div>\n"

  # Write the content to the markdown file
  echo -e "$content" >> "view.$filename.md"
done

echo "Created Markdown files for all PDF documents."
