#!/usr/bin/env fish

# Gloabals
set -g fish_greeting ""
set -gx EDITOR nvim
set -gx HYPRSHOT_DIR "$HOME/Pictures/Screenshots"
set -gx VISUAL nvim
set -gx QT_STYLE_OVERRIDE CatppuccinMocha
set -gx LC_TIME en_US
set -gx GDK_DISABLE vulkan

set -gx FZF_DEFAULT_OPTS " \
--pointer  \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--preview 'bat --color=always --style=plain {}' \
--bind K:preview-up,J:preview-down \
--prompt \"Search 🔍: \""
