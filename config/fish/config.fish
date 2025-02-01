#!/usr/bin/env fish

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# fzf
fzf --fish | source

# prompt
starship init fish | source

# sources
source ~/.config/fish/config/my_prompt.fish
source ~/.config/fish/config/aliases.fish
source ~/.config/fish/config/mappings.fish
source ~/.config/fish/config/paths.fish
source ~/.config/fish/config/globals.fish
source ~/.config/fish/config/vim-mode.fish
