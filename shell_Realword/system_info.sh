#!/usr/bin/bash

# this script is to check the system_info

echo "Hostname: $(hostname)"
echo "OS: $(cat /etc/os-release | head -1 | cut -d '"' -f2)"
echo "OS: $(cat /etc/os-release | awk -F '"' 'NR==1 {print $2})