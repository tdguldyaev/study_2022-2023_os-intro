#!/bin/bash

gcc -o num_check num_check.c
./num_check
exit_code=$?

if [ $exit_code -eq 0 ]; then
    echo "Число ноль"
elif [ $exit_code -eq 1 ]; then
    echo "Число больше нуля"
elif [ $exit_code -eq 2 ]; then
    echo "Число меньше нуля"
else
    echo "Error"
fi