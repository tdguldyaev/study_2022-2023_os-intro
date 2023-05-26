#!/bin/bash

if [ -z "$1" ]; then
    echo "Не указано название команды"
    exit 1
fi

command="$1"
man_dir="/usr/share/man/man1"
man_file="$man_dir/$command.1.gz"

if [ -f "$man_file" ]; then
    zcat "$man_file" | less
else
    echo "Справка для команды $command не найдена"
    exit 1
fi