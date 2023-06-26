#!/bin/bash

chmod +x variables.sh
chmod +x print.sh
. ./variables.sh
. ./print.sh

echo -n "Write data in file? Y/N    "
read answer
if [[ $answer == 'Y'  ]] || [ $answer == 'y' ]
then
. ./print.sh > $(date | awk '{printf "%d_%s_%d_%s", $2, $3, $4, $5}').status
fi