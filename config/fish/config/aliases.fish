#!/usr/bin/env fish

function rofi
	command rofi 2>/dev/null $argv
end

function yad
	command yad 2>/dev/null $argv
end

function yc
	yad --color
end

function c
	clear
end

function q
	exit
end

function r
	ranger
end

function ufetch
	bash ~/.bin/ufetch
end

function afetch
	cd $HOME/.bin/afetch/
	./afetch
	cd -
end

function nt
	neofetch
end

function rxfetch
	curl https://raw.githubusercontent.com/Mangeshrex/rxfetch/main/rxfetch | bash
end

function n
	nvim $argv
end

function v
	vim $argv
end

function dr
	rofi -show drun
end

function dload
	sudo pacman -Syu $argv
end

function upd
	sudo pacman -Syu
end

function rmove
	sudo pacman -R $argv
end

function frc
	nvim ~/.config/fish/config.fish
end

function nf
	nvim "$(fzf)"
end

function vm
	vifm
end

function sf
	source ~/.config/fish/config.fish
end

function li
	eza -1 --icons --group-directories-first
end

function la
	eza -1 --icons --group-directories-first -a
end

function re
	reboot
end

function sdn
	echo "" && shutdown -h now
end

function dream
	echo "" && systemctl suspend
end

function venv
	python -m venv .venv
end

function venva
	source .venv/bin/activate.fish
end

function venvd
	deactivate
end

function oil
	nvim .
end

source ~/.config/fish/config/aliases_cd.fish
