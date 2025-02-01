#!/bin/bash

get_brightness() {
    brightness=$(brightnessctl get)  # Получаем текущую яркость
    max_brightness=$(brightnessctl max)  # Получаем максимальную яркость
    echo $((brightness * 100 / max_brightness))  # Возвращаем уровень в процентах
}

get_icon() {
    brightness=$(get_brightness)
    if [ "$brightness" -eq 100 ]; then
        echo ""  # Иконка для 100%
    elif [ "$brightness" -gt 50 ]; then
        echo ""  # Иконка для 50%
    elif [ "$brightness" -gt 10 ]; then
        echo ""  # Иконка для 10%
    else
        echo ""  # Иконка для <10%
    fi
}

open_mako_slider() {
    brightness=$(get_brightness)
    # Отправка сообщения в mako для отображения ползунка
    notify-send --hint=int:transient:1 "Уровень яркости" "Текущая яркость: $brightness%" --action=brightnessctl
    brightnessctl set "$brightness%"  # Устанавливаем текущую яркость
    # Используйте zenity для создания ползунка (если установлено)
    new_brightness=$(zenity --slider --text="Уровень яркости" --min-value=0 --max-value=100 --value="$brightness")
    if [ -n "$new_brightness" ]; then
        brightnessctl set "$new_brightness%"
    fi
}

# Основной цикл
while true; do
    brightness=$(get_brightness)
    icon=$(get_icon)

    # Вывод информации в формате, воспринимаемом Waybar
    echo "{\"text\": \"$icon $brightness%\", \"alt\": \"$brightness%\", \"tooltip\": \"Яркость: $brightness%\"}"
    
    # Обработка клика
    if [[ "$1" == "click" ]]; then
        open_mako_slider
        exit 0
    fi
    
    sleep 5  # Обновление каждые 5 секунд
done
