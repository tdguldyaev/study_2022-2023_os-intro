#!/bin/bash

SEM_FILE="/tmp/sem.lock"

t1=12

t2=10

if [ ! -f "$SEM_FILE" ]; then
    echo "Ресурс занят. Ожидание освобождения ресурса..."
    sleep "$t1"
    while [ -f "$SEM_FILE" ]; do
        sleep 1
    done
fi

touch "$SEM_FILE"

echo "Ресурс доступен. Использование ресурса в течении $t2 секунд"
sleep "$t2"

rm "$SEM_FILE"

echo "Ресурс свободен"
