#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Not all param"
    exit 1
fi

file_format="$1"

dir="$2"

if [ ! -d "$dir" ]; then
    echo "Dir not found"
    exit 1
fi

count=$(find "$dir" -type f -name "*.$file_format" | wc -l)

echo "Count .$file_format = $count"