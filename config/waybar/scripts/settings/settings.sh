#!/usr/bin/env bash

selected=$(echo -e "Fonts\nTheme\nShell\nWallpapers\nLayout\nSDDM" | rofi -dmenu -p "Choose settings:")

case "$selected" in
	"Fonts")
		bash $HOME/.config/waybar/scripts/settings/font/font.sh;;
	*);;
esac
