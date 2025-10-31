#!usr/bin/bash

# this script is to monitor the disk usage of the system

threshold=80

usage=$(df -h / | awk 'NR==2 {print $5}')

echo "${usage}"