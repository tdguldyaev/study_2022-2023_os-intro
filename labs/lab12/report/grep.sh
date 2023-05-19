#!/bin/bash

input_file=""
output_file=""
pattern=""
sens=0
numbers=0

while getopts "i:o:p:Cn" opt; do
    case $opt in
        i) input_file=$OPTARG;;
        o) output_file=$OPTARG;;
        p) pattern=$OPTARG;;
        C) sens=1;;
        n) numbers=1;;
        \?) echo "Неверный ключ: -$OPTARG" >&2 exit 1;;
    esac
done

if [ -z "$pattern" ]; then
    echo "Не указан паттерн"
    exit 1
fi

if [ -z $input_file ]; then
    echo "Не указан файл"
    exit 1
fi

grep_command="grep "

if [ $sens -eq 1 ]; then
    grep_command+=" -i"
fi

if [ $numbers -eq 1 ];then
    grep_command+=" -n"
fi

grep_command+=" $pattern"


if [ -n "$output_file" ]; then
  $grep_command "$input_file" > "$output_file"
else
  $grep_command "$input_file"
fi