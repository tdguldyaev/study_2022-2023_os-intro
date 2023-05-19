#!/bin/bash

if [ -z "$1" ]; then
    echo "Не указана директория"
    exit 1
fi

dir=$1
arch_name="archive.tar.gz"
find "$dir" -type f -mtime -7 -print0 | tar -czvf "$arch_name" --null --no-recursion -T - --transform="s|^.*/||"