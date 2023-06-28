#!/bin/bash

start_time=$SECONDS

. ./checks.sh
. ./variables.sh
. ./print.sh

end_time=$((SECONDS - start_time))
echo "Script execution time (in seconds) = $end_time"
