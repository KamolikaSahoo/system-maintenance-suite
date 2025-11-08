#!/bin/bash
# Automated Backup Script

# Source and Destination directories
SOURCE_DIR="$HOME/Documents"
BACKUP_DIR="$HOME/Backups"

# Create backup folder if not exists
mkdir -p "$BACKUP_DIR"

# Create backup filename with date
BACKUP_FILE="$BACKUP_DIR/backup_$(date +%Y%m%d_%H%M%S).tar.gz"

# Perform backup
tar -czf "$BACKUP_FILE" "$SOURCE_DIR" 2>/dev/null

# Check success
if [ $? -eq 0 ]; then
    echo "✅ Backup completed successfully!"
    echo "Backup stored at: $BACKUP_FILE"
else
    echo "❌ Backup failed!"
fi
