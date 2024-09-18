#!/bin/bash

# Get a list of all PDF files in the current directory
files=(*.pdf)
touch 1files.txt

# Remove the first character and store the results in a new array
new_files=()
for file in "${files[@]}"; do
  new_files+=("${file:1}")
done

# Remove the ".pdf" extension and store the results in another array
final_files=()
for file in "${new_files[@]}"; do
  final_files+=("${file%.pdf}")
done

# Sort the final list in ascending order
final_files=($(printf "%s\n" "${final_files[@]}" | sort -n))

# Print the sorted list to a new text file
printf "%s\n" "${final_files[@]}" > 1files.txt
