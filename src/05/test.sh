#!/bin/bash

sudo find /var/log/ -type f -exec du -h {} + | while IFS=$'\t' read -r size path; do
    IFS='.' read -r filename extension <<< "$path"
    file_type=$(file -b --mime-type "$path")
    echo "$size $path $extension"
done | sort -rh | head -n 10
