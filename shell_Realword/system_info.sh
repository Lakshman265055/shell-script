#!/usr/bin/bash

# this script is to check the system_info

echo "Hostname: $(hostname)"
echo "OS: $(cat /etc/os-release | head -1 | cut -d '"' -f2)"
#echo "OS: $(cat /etc/os-release | awk -F '"' 'NR==1 {print $2}')"
#above one is with awk 

echo "kernel: $(uname -r)"

echo "CPU Info: $(cat /proc/cpuinfo | awk -F ':' 'NR==5 {print $2}')"

echo "Memory Used: $(free -h | awk '/Mem:/ {print $3 "/" $2 " used"}')"

echo "Disk Usage: $(df -h | awk '$NF=="/" {print "Disk Usage:", $1, $5}')"