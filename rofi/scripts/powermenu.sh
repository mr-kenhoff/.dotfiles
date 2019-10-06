#!/bin/bash

rofi_command="rofi -theme powermenu-theme.rasi"

### Options ###
lock=""
suspend=""
log_out=""
power_off=""
reboot=""
# Variable passed to rofi
options="$log_out\n$suspend\n$lock\n$power_off\n$reboot"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 2)"
case $chosen in
    $power_off)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $lock)
        i3lock-fancy 
        ;;
    $suspend)
        3lock-fancy && systemctl suspend
        ;;
    $log_out)
        i3-msg exit
        ;;
esac
