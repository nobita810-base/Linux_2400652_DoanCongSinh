#!/bin/bash

DATA_DIR="data"
BACKUP_DIR="backup"
LOG_FILE="logs/backup.log"

if [ ! -d "$DATA_DIR" ]; then
    echo "Khong tim thay thu muc data"
    exit 1
fi

mkdir -p "$BACKUP_DIR"

TEN_FILE="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

if tar -czf "$BACKUP_DIR/$TEN_FILE" "$DATA_DIR"; then
    echo "$(date) | $TEN_FILE | THANH CONG" >> "$LOG_FILE"
    echo "Sao luu thanh cong: $TEN_FILE"
else
    echo "$(date) | $TEN_FILE | THAT BAI" >> "$LOG_FILE"
    echo "Sao luu that bai"
    exit 1
fi

echo ""
echo "===== DANH SACH BAN SAO LUU ====="
ls -lh "$BACKUP_DIR"
