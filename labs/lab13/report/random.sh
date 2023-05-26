#!/bin/bash

generate_rand_lett() {
    alphabet="abcdefghijklmnopqrstuvwxyz"
    random_index=$((RANDOM % ${#alphabet}))
    random_letter="${alphabet:$random_index:1}"
    echo "$random_letter"
}

random_seq=""
for ((i=0; i<10; i++)); do
    random_letter=$(generate_rand_lett)
    random_seq="$random_seq$random_letter"
done

echo "Случайная последовательность: $random_seq"