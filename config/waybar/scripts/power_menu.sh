#!/usr/bin/env bash

function main {
	selected=$(echo -e " Power off\n Sleep\n Restart\n󰌾 Lock Screen\n Log Out" | rofi -dmenu -config ~/.config/rofi/powermenu/config.rasi)

	case "$selected" in
		" Power off")
			shutdown -h now;;
		" Sleep")
			systemctl suspend;;
		" Restart")
			reboot;;
		"󰌾 Lock Screen")
			hyprlock;;
		" Log Out")
			hyprctl dispatch exit;;
		*)
			echo "Unknown option";;
	esac
}

main
