#!/bin/bash

DIR="/home/cyeboah/personal_record_system"

SOURCE_DIR="$DIR/notes"
BACKUP_DIR="$DIR/backups"

BACKUP_FOLDER="$BACKUP_DIR/$(date +\%Y-\%m-\%d)"

rsync -av --delete "$SOURCE_DIR/" "$BACKUP_FOLDER/"

crontab -e

exit 1
