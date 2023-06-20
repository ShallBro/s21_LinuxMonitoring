#!/bin/bash
text="text"
if [[ $text =~ ^[0-9]+$ ]]
then
echo "Wrong input"
else
echo "Variable equals $text"
fi