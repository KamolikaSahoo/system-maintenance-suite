#!/bin/bash
# Log Monitoring Script

LOG_FILE="/var/log/syslog"
KEYWORD="error"
OUTPUT_FILE="$HOME/log_alerts.txt"

echo "🔍 Searching for '$KEYWORD' in $LOG_FILE..."
grep -i "$KEYWORD" "$LOG_FILE" > "$OUTPUT_FILE"

if [ -s "$OUTPUT_FILE" ]; then
    echo "⚠️ Errors found! Check $OUTPUT_FILE for details."
else
    echo "✅ No errors found in logs."
fi
