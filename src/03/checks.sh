#!/bin/bash

if [[ $# != 4 ]]
then
echo "Invalid number of parameters entered"
exit 1
fi

for var in "$@" 
do
    if [[ ! $var =~ ^[1-6]+$ ]]
    then
    echo "Enter the parameter value only from 1 to 6"
    exit 1
    fi
done

if [ $1 -eq $2 ] || [ $3 -eq $4 ]
then
    echo "Parameters equals please retry script with unique values"
    exit 1
fi