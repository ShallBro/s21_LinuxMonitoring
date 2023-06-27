#!/bin/bash

. ./color.sh

if [[ $# != 0 ]]
then
echo "This script don't support parameters"
exit 1
fi

while IFS='=' read _ value
do
    if [[ ! $value =~ ^[1-6]$ ]] && [[ -n $value ]]
    then
    echo "Enter the parameter value only from 1 to 6"
    exit 1
    fi
done < color.conf


if [ $color_name_back1 == $color_name_font1 ] || [ $color_name_back2 == $color_name_font2 ]
then
    echo "Parameters font and background must not be equal please retry script with unique values"
    exit 1
fi
