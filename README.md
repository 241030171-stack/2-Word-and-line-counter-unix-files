step1-vi count.sh

step2-i

step 3-#!/bin/bash

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
 step4-ESC

step5-:wq
step6-
vi "project 2.txt"
step7-
This is line one.
This is line two.
This is third line.
step8-
ESC → :wq
step9-chmod +x count.sh
step10-
./count.sh "project 2.txt"
output-Lines: 3
Words: 12
Characters: 60





