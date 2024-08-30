#!/bin/bash

# Define the output filename
output_file="output.md"

# Loop through all files starting with "Screenshot" and ending with ".png"
for filename in Screenshot*.png; do
  # Remove the extension from the filename
  image_name="${filename%.*}"
  
  # Create the markdown link with alt text set to the filename
  markdown_link="- ![${image_name}]($filename)"
  
  # Append the markdown link to the output file
  echo "$markdown_link" >> "$output_file"
done

# Print a message indicating completion
echo "Finished creating markdown links in $output_file"
