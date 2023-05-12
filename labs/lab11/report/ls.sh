#!/bin/bash

if [ ! -d "$1" ]; then
    exit 1
else 
    dir="$1"
fi

files=$(find "$dir" -maxdepth 1 -printf "%M\t%f\n")


while IFS=$'\t' read -r perm filename; do
    echo "Name: $filename"
    echo "Permissions: $perm"
    echo "----------------------------"
done <<< "$files"