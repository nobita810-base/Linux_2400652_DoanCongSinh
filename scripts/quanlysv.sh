#!/bin/bash

DATA="data/sinhvien.txt"

if [ ! -f "$DATA" ]; then
    echo "Khong tim thay file du lieu!"
    exit 1
fi

while true
do
    echo "===== CHUONG TRINH QUAN LY SINH VIEN ====="
    echo "1. Hien thi danh sach sinh vien"
    echo "2. Tim kiem sinh vien theo ma"
    echo "3. Thong ke sinh vien dat va khong dat"
    echo "4. Tinh diem trung binh"
    echo "5. Hien thi sinh vien co diem cao nhat"
    echo "6. Sap xep sinh vien theo diem giam dan"
    echo "0. Thoat chuong trinh"

    read -p "Nhap lua chon: " chon

    case $chon in
        1)
            echo "DANH SACH SINH VIEN"
            cat "$DATA"
            ;;
        2)
            read -p "Nhap ma sinh vien: " ma
            grep "^$ma," "$DATA"
            ;;
        3)
            awk -F',' '
            $3 >= 5 {dat++}
            $3 < 5 {khongdat++}
            END {
                print "Sinh vien dat:", dat
                print "Sinh vien khong dat:", khongdat
            }' "$DATA"
            ;;
        4)
            awk -F',' '
            {tong += $3; dem++}
            END {
                printf "Diem trung binh: %.2f\n", tong/dem
            }' "$DATA"
            ;;
        5)
            sort -t',' -k3,3nr "$DATA" | head -n 1
            ;;
        6)
            echo "DANH SACH SAP XEP GIAM DAN"
            sort -t',' -k3,3nr "$DATA"
            ;;
        0)
            echo "Thoat chuong trinh!"
            break
            ;;
        *)
            echo "Lua chon khong hop le!"
            ;;
    esac
    echo ""
done
