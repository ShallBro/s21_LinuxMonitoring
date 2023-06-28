#!/bin/bash

function top() {
counter=1
flag=$2
while read -r size path
do
    if [[ $flag == 0 ]]
    then
        echo "$counter - $path, ${size}B"
    elif [[ $flag == 1 ]]
    then
        IFS='.' read -r filename tip <<< $path 
        echo "$counter - $path, ${size}B, $tip"
    else
        hash=$(sha256sum "$path" | awk '{print $1}')
        echo "$counter - $path, ${size}B, $hash"
    fi
    counter=$(( $counter + 1 ))
    if [[ $counter == 3 ]]
    then
        break
    fi
done <<< $1
}