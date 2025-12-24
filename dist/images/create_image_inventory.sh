#!/bin/bash
set -e  # Exit on error

# Purpose: Create a JavaScript module exporting an inventory of image paths
# Output: Creates 'imageInventory.js' with paths suitable for HTML <img> tags
# Usage: Import in JavaScript as:
#   import { images } from './imageInventory.js'
# Information collected:
#   - Relative path to image file
# Supported formats: jpg, jpeg, png, gif, webp, svg

# Cleanup function
cleanup() {
    if [ -f temp.json ]; then
        rm -f temp.json
    fi
}

# Set cleanup on script exit
trap cleanup EXIT

echo "Scanning for image files..."

# Find all image files and create JSON inventory
if ! find . -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \
    -o -iname "*.gif" -o -iname "*.webp" -o -iname "*.svg" \) -exec sh -c '
    for f do
        path="${f#./}"
        dir=$(dirname "$path")
        if [ "$dir" = "." ]; then
            dir="root"
        fi
        printf "{\"dir\":\"%s\",\"path\":\"%s\"}\n" "$dir" "$path"
    done
' sh {} + | jq -s 'group_by(.dir) | map({(.[0].dir): map(.path)}) | add' > temp.json; then
    echo "Error: Failed to create image inventory" >&2
    exit 1
fi

# Get directory count and total image count
dir_count=$(jq -r 'keys | length' temp.json)
total_images=$(jq -r '[.[]] | map(length) | add' temp.json)

if ! [[ "$dir_count" =~ ^[0-9]+$ ]] || ! [[ "$total_images" =~ ^[0-9]+$ ]]; then
    echo "Error: Failed to count directories and images" >&2
    exit 1
fi

# Convert JSON to JavaScript module
if ! (echo 'export const images = ' > imageInventory.js && \
    cat temp.json >> imageInventory.js && \
    echo ';' >> imageInventory.js); then
    echo "Error: Failed to create JavaScript module" >&2
    exit 1
fi

echo "Successfully created image inventory:"
echo "- Found $total_images images in $dir_count directories"
echo "- Created: imageInventory.js"
