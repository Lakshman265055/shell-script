#!/usr/bin/bash

if [[ -z "$1" ]]; then
    echo "script usage: ${0} <folder/path>"
    exit 1

if [[ ! -d "$1"]]; then
    echo " folder is not preset please check thr path"
    exit 1

SOURCE_DIR=$1

BACKUP_DIR="/tmp/backups"

mkdir -p $BACKUP_DIR

BACkUP_FILE="${BACKUP_DIR}/$(basename "$BACKUP_DIR")_backup_$(date +%F_%H-%M-%S).tar.gz"

tar -czf "$BACKUP_FILE" "$SOURCE_DIR"