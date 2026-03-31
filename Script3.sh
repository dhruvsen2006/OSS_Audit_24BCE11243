#!/bin/bash

echo "Disk & Permission Check"
echo "############################################"

printf "%-10s %-8s %-10s %-10s\n" "dir" "size" "owner" "perms"
echo "############################################"

for dir in /etc /var/log /usr/bin /home /tmp /opt
do
    if [ -d "$dir" ]; then
        size=$(du -sh "$dir" 2>/dev/null | cut -f1)
        owner=$(stat -c '%U' "$dir")
        perms=$(stat -c '%A' "$dir")

        printf "%-10s %-8s %-10s %-10s\n" "$dir" "$size" "$owner" "$perms"
    fi
done

echo "############################################"
echo "Completed."