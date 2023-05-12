#!/bin/bash

index=1
for arg in "$@"; do
    echo "Arg $index: $arg"
    (( index++ ))
done