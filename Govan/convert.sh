#!/bin/bash

# Directory containing the files (change this to your directory)
input_dir="src"
output_dir="trg"  # Output directory (optional)

# Ensure output directory exists
mkdir -p "$output_dir"

# Loop through all files in the directory
for file in "$input_dir"/*; do
  if [[ -f $file ]]; then  # Check if it's a file
    filename=$(basename -- "$file")
    extension="${filename##*.}"
    name="${filename%.*}"

    # Convert the file using Pandoc
    pandoc "$file" -o "$output_dir/$name.md"

    echo "Converted $filename to $output_dir/$name.md"
  fi
done
