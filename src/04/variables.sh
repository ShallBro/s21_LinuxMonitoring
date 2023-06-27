#!/bin/bash

TZ=$(timedatectl show --property=Timezone --value)
OS="$(uname -s) $(uname -r)"
date=$(date)
time=$(uptime -p)
total_seconds=$(awk '{print $1}' /proc/uptime)
ip=$(ip addr show enp0s3 | grep 'inet ' | awk '{print $2}')
mask=$(ifconfig enp0s3 | grep 'netmask ' | awk '{print $4}')
gateway=$(ip route show default | awk '{print $3}')
ram_total=$(free -m | awk '/Mem:/{printf "%.3f GB\n", $2/1024}')
ram_used=$(free -m | awk '/Mem:/{printf "%.3f GB\n", $3/1024}')
ram_free=$(free -m | awk '/Mem:/{printf "%.3f GB\n", $4/1024}')
space_root=$(df /root/ | grep '/dev/mapper/' | awk '{printf "%.2f MB\n", $2/1024}')
space_root_used=$(df /root/ | grep '/dev/mapper/' | awk '{printf "%.2f MB\n", $3/1024}')
space_root_free=$(df /root/ | grep '/dev/mapper/' | awk '{printf "%.2f MB\n", $4/1024}')
