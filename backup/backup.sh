#!/bin/bash

#SRC_DIRS="/home/moris/Scripts "
CONFIG_FILE="backup.conf"

DEST_DIR="/media/moris/Samsung USB/Backup_Debiana"

while IFS= read -r dir; do
    rsync -avh --progress --delete "$dir" "$DEST_DIR"
done < "$CONFIG_FILE"

echo "Backup completed sucesfuly"

