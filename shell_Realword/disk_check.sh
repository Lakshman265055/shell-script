#!/usr/bin/bash

# this script is to monitor the disk usage of the system

threshold=80

usage=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')

echo "${usage}"

if [[ "$usage" -ge "$threshold" ]]; then
   echo " Disk usage is ${usage}%, above ${threshold}% threshold!"
else
   echo "Disk usage is normal (${usage}%)"
fi