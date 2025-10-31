#!/usr/bin/bash
# this script is to delete the files older than 7 days
# usage:

if [[ -z "$1"]]; then
    echo " you should pass directory mandatoryly"
    exit 1

if [[ ! -d "$1"]]; then
    echo " directory no present"
    exit 1

deltedays=7
path=$1

find $1 -type f -name ".log" -mtime +7 exec rm {} \;
echo "✅ Cleanup complete!"