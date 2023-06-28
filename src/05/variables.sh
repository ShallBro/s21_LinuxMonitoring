#!/bin/bash

number_folders=$(sudo find $1 -type d | wc -l)
top5_dir=$(sudo du -h $1 | sort -rh | head -n 5)
files=$(sudo find $1 -type f | wc -l)
conf=$(sudo find $1 -type f -name "*.conf" | wc -l)
txt=$(sudo find $1 -type f -name "*.txt" | wc -l)
executable=$(sudo find $1 -type f -executable | wc -l)
log=$(sudo find $1 -type f -name "*.log" | wc -l)
archiv=$(sudo find $1 -type f -name "*.zip" -o -name "*.tar" -o -name "*.gz" | wc -l)
symbols=$(sudo find $1 -type l | wc -l)
top_files=$(sudo find $1 -type f -exec du -h {} + | sort -rh | head -n 10)
top_exec_files=$(sudo find $1 -type f -executable -exec du -h {} + | sort -rh | head -n 10)