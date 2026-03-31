#!/bin/bash

file=$1
keyword=$2

if [[ -z "$file" || -z "$keyword" ]]; then
    echo "Usage: $0 <file> <keyword>"
    exit 1
fi

count=$(grep -c "$keyword" "$file")

echo "Keyword '$keyword' found $count times in $file"
echo "----------------------------------------"

echo "Last 5 matching lines:"
grep "$keyword" "$file" | tail -n 5