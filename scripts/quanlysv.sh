#!/bin/bash

FILE="data/sinhvien.txt"

while true
do
    echo ""
    echo "========== QUAN LY SINH VIEN =========="
    echo "1. Hien thi danh sach sinh vien"
    echo "2. Tim kiem sinh vien theo ma"
    echo "3. Thong ke sinh vien dau/truot"
    echo "4. Tinh diem trung binh"
    echo "5. Tim sinh vien co diem cao nhat"
    echo "6. Sap xep sinh vien theo diem giam dan"
    echo "0. Thoat"
    echo "======================================="
    read -p "Nhap lua chon: " choice

    case "$choice" in
        1)
            cat "$FILE"
            ;;
        2)
            read -p "Nhap ma sinh vien: " ma
            grep "^$ma," "$FILE" || echo "Khong tim thay sinh vien"
            ;;
        3)
            awk -F',' '{
                if ($3 >= 5) dau++
                else truot++
            }
            END {
                print "So sinh vien dau:", dau
                print "So sinh vien truot:", truot
            }' "$FILE"
            ;;
        4)
            awk -F',' '{
                tong += $3
                dem++
            }
            END {
                if (dem > 0)
                    printf "Diem trung binh: %.2f\n", tong/dem
                else
                    print "Khong co du lieu"
            }' "$FILE"
            ;;
        5)
            sort -t',' -k3,3nr "$FILE" | head -n 1
            ;;
        6)
            sort -t',' -k3,3nr "$FILE"
            ;;
        0)
            echo "Tam biet!"
            break
            ;;
        *)
            echo "Lua chon khong hop le!"
            ;;
    esac
done
