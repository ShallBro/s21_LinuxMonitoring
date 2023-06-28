#!/bin/bash

. ./function.sh

echo "Total number of folders (including all nested ones) = $number_folders"
echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
top "$top5_dir" 0
echo "etc up to 5"
echo "Total number of files = $files"

echo "Number of:"
echo "Configuration files (with the .conf extension) = $conf"
echo "Text files = $txt"
echo "Executable files = $executable"
echo "Log files (with the extension .log) = $log"
echo "Archive files = $archiv"
echo "Symbolic links = $symbols"

echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
top "$top_files" 1
echo "etc up to 10"
echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file) "
top "$top_exec_files" 2
echo "etc up to 10"

