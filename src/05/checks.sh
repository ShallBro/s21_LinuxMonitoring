#!/bin/bash

if [[ $# != 1 ]]
then
    echo "This script support only 1 parameter"
    exit 1
fi

if [[ ! $1 == */ ]]
    then
    echo "At the end of the path there is no /"
    exit 1
fi

if [[ ! -d "$1" ]] 
    then
    echo "Directory does is not exist"
    exit 1
fi
