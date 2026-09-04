# Plik: ~/.config/wofi/moje_menu.sh
# Skrypt z własną listą opcji dla wofi

#!/bin/bash

# Lista opcji rozdzielona nowymi liniami, wysłana do wofi w trybie dmenu
wybor=$(echo -e "Wyłącz\nRestart\nWyloguj\nUsipij\nZablokuj ekran" | wofi --dmenu --prompt "Zasilanie:")
# Sprawdzamy co user wybrał i odpalamy odpowiednią komendę
case "$wybor" in

    "Wyloguj") hyprctl dispatch exit ;;      # jak Hyprland, zmień pod swój WM
    "Restart") systemctl reboot ;;
    "Wyłącz") systemctl poweroff ;;
    "Usipij") systemctl suspend ;;
    "Zablokuj ekran") swaylock -f -c 1e1e2e;;  # jak Sway, zmień pod swój WM

esac