#!/usr/bin/env bash

set -e  # exit on error

# Check for argument
if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <layout file name>"
    exit 1
fi

SRC="$1"  # path to source file
DEST="/usr/share/X11/xkb/symbols/$1"

# Check if the file exists
if [[ ! -f "$SRC" ]]; then
    echo "Error: file '$SRC' not found."
    exit 1
fi

echo "Copying '$SRC' to '$DEST' (overwriting if it exists)..."

# Copy with sudo (system directory)
sudo cp -f "$SRC" "$DEST"

echo "Done: file successfully copied."