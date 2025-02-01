#!/usr/bin/env bash

font=$(fc-list : family | rofi -dmenu -p "Choose font:")

python $HOME/.config/waybar/scripts/settings/font/kitty_font.py $font
