#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

file="$1"

lines=0
words=0
chars=0

while IFS= read -r line
do
    lines=$((lines + 1))
    chars=$((chars + ${#line} + 1))
    for w in $line
    do
        words=$((words + 1))
    done
done < "$file"

echo "Lines: $lines"
echo "Words: $words"
echo "Characters: $chars"
