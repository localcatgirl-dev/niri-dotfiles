#!/bin/bash
options="Logout\nShutdown\nReboot\nReboot to Firmware\\nSuspend\nExit"
chosen=$(echo -e "$options" | fuzzel --dmenu --prompt "Power Menu: " --placeholder "")

case $chosen in
  "Logout")   niri msg action quit --skip-confirmation ;;
  "Shutdown") systemctl poweroff ;;
  "Reboot")   systemctl reboot ;;
  "Suspend")  systemctl suspend ;;
  "Firmware") systemctl reboot --firmware-setup ;;
  "Exit")     exit 0 ;;
  *)          exit 1 ;;
esac
