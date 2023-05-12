#!/bin/bash

backup_dir="$HOME/backup"

mkdir -p "$backup_dir"

filename=$(basename "$0")

filename_wtihout_expansion=$(basename "$0" | sed 's/\.[^.]*$//')

cp "$filename" "$backup_dir"

zip -q "$backup_dir/$filename_wtihout_expansion.zip" "$filename"