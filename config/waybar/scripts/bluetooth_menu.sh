#!/usr/bin/env bash

# Получаем список подключенных и обнаруживаемых устройств
   connected_devices=$(bluetoothctl devices | grep "Device" | awk '{print $2, $3, $4, $5}' | sed 's/^[^ ]* //')
   pairing_devices=$(bluetoothctl devices | grep "Pairing" | awk '{print $2, $3, $4, $5}' | sed 's/^[^ ]* //')

   # Формируем список для rofi
   menu_list="Подключенные устройства:\n$connected_devices\n\nУстройства в режиме сопряжения:\n$pairing_devices"

   # Используем rofi для выбора устройства
   selected_device=$(echo -e "$menu_list" | rofi -dmenu -p "Выберите устройство")

   if [ -n "$selected_device" ]; then
       # Определяем действие для выбранного устройства
       action=$(echo -e "Подключить\nОтключить\nУдалить" | rofi -dmenu -p "Действия для $selected_device")

       case $action in
           "Подключить")
               bluetoothctl connect "$(echo $selected_device | awk '{print $1}')"
               ;;
           "Отключить")
               bluetoothctl disconnect "$(echo $selected_device | awk '{print $1}')"
               ;;
           "Удалить")
               bluetoothctl remove "$(echo $selected_device | awk '{print $1}')"
               ;;
           *)
               echo "Неизвестное действие"
               ;;
       esac
   fi
