#!/bin/bash

# Define the output filename
output_file="irsdocs.md"

# Loop through all files starting ending with ".pdf"
for filename in *.pdf; do
  # Remove the extension from the filename
  image_name="${filename%.*}"
  
  # Create the markdown link with alt text set to the filename
  markdown_table="|$filename| [$title]($filename) |"
  
  # Append the markdown link to the output file
  echo "$markdown_table" >> "$output_file"
done

# Print completion message
echo "Finished creating table for $output_file"
