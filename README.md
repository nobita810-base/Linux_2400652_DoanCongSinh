# Linux Project - Quan ly sinh vien

## Thong tin sinh vien
- MSSV: 2400652
- Ho ten: Doan Cong Sinh
- Repository: Linux_2400652_DoanCongSinh

## Gioi thieu
Du an thuc hanh Linux, su dung Bash Script de quan ly sinh vien,
kiem tra thong tin he thong va sao luu du lieu.

## Cau truc thu muc
- data: Chua du lieu sinh vien
- scripts: Chua cac script Bash
- logs: Luu nhat ky he thong va sao luu
- backup: Luu cac file sao luu

## Mo ta cac script
- hethong.sh: Hien thi thong tin he thong va kiem tra mang.
- quanlysv.sh: Quan ly danh sach, tim kiem va thong ke sinh vien.
- saoluu.sh: Nen va sao luu du lieu.

## Huong dan chay
chmod +x scripts/*.sh

./scripts/hethong.sh
./scripts/quanlysv.sh
./scripts/saoluu.sh

## Ket qua thuc hien
- hethong.sh: Hien thi thong tin he thong va ket noi mang.
- quanlysv.sh: Da kiem tra 6 chuc nang quan ly sinh vien.
- saoluu.sh: Tao file nen thanh cong va ghi log.

## Chuc nang sao luu
Du lieu trong thu muc data duoc nen thanh file TAR.GZ.
Cac ban sao luu duoc luu trong thu muc backup.
Nhat ky sao luu duoc ghi tai logs/backup.log.

## Phat trien tinh nang
Nhanh feature-backup bo sung mo ta va huong dan chuc nang sao luu du lieu.
