#!/bin/bash

TZ=$(timedatectl show --property=Timezone --value)
OS=$(cat /etc/issue)
date=$(date)
time=$(uptime -p)
total_seconds=$(awk '{print $1}' /proc/uptime)
echo "hostname: $HOSTNAME"
echo "timezone: $TZ"
echo "user: $USER"
echo "OS: $OS"
echo "date: $date"
echo "uptime: $time"
echo "uptime_sec: $total_seconds sec"