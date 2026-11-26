#!/bin/bash

THOIGIAN=$(date +"%Y%m%d_%H%M%S")
TENFILE="backup_$THOIGIAN.tar.gz"

echo "===== CHUONG TRINH SAO LUU ====="

if [ ! -d "data" ]; then
    echo "Khong tim thay thu muc data!"
    exit 1
fi

tar -czf "backup/$TENFILE" data

if [ $? -eq 0 ]; then
    echo "$(date) | $TENFILE | THANH CONG" >> logs/backup.log
    echo "Sao luu thanh cong: $TENFILE"
else
    echo "$(date) | $TENFILE | THAT BAI" >> logs/backup.log
    echo "Sao luu that bai!"
fi

echo ""
echo "===== DANH SACH BAN SAO LUU ====="
ls -lh backup/
