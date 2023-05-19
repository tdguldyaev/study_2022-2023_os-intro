#!/bin/bash

if [ $# -ne 1 ] || [ "$1" -le 0 ]; then
    exit 1
fi

for ((i=1;i<=$1;i++)); do
    touch "$i.tmp"
done

read -p "Delete files? y/n: " del
if [ $del == 'y' ]; then
    for ((i=1;i<=$1;i++)); do
        rm "$i.tmp"
    done
    echo "Delete $1 files"
fi