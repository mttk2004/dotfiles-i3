#!/bin/bash

# Các tuỳ chọn
shutdown="⏻ Tắt máy"
reboot=" Khởi động lại"
suspend="⏾ Ngủ (Suspend)"
logout="󰗽 Đăng xuất (Logout)"

# Hiển thị menu bằng rofi
chosen=$(printf "%s\n%s\n%s\n%s" "$shutdown" "$reboot" "$suspend" "$logout" | rofi -dmenu -p "Bảng điều khiển" -lines 4)

case "$chosen" in
    "$shutdown") systemctl poweroff ;;
    "$reboot") systemctl reboot ;;
    "$suspend") systemctl suspend ;;
    "$logout") i3-msg exit ;;
esac
