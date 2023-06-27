#!/bin/bash

if [[ $# != 1 ]]
then
    echo "This script support only 1 parameter"
    exit 1
fi

text=$1
if [[ $text =~ ^[0-9]+$ ]]
then
echo "Wrong input"
else
echo "Variable equals $text"
fi