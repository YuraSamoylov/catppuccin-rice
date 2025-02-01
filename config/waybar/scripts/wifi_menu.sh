#!/bin/bash

# Получаем список доступных сетей, выводя только SSID
networks=$(nmcli -t -f ssid dev wifi | sort | uniq)

# Используем rofi для выбора сети
selected=$(echo "$networks" | rofi -dmenu -i -p "Choose Wi-Fi network:")

# Если выбрана сеть, подключаемся к ней
if [ -n "$selected" ]; then
    ssid="$selected"
    password=$(rofi -dmenu -password -p "Enter password for $ssid:")
    
    nmcli dev wifi connect "$ssid" password "$password"
fi
