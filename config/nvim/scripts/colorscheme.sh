#!/usr/bin/env bash

items=("tokyonight" "catppuccin" "rose-pine" "kanagawa" "gruvbox")
colorscheme=$(printf "%s\n" "${items[@]}" | fzf --no-preview --prompt="Select your neovim theme: ")

echo "vim.cmd.colorscheme \"$colorscheme\"" > ~/.config/nvim/lua/config/colorscheme.lua
