func! ColorSelecting(_, result)
	if(a:result == 1)
		call writefile(['colorscheme tokyonight'], $HOME.'/.config/vim/config/z_colorscheme.vim', 'b')
		colorscheme tokyonight
		TransparentEnable
	elseif(a:result == 2)
		call writefile(['colorscheme gruvbox'], $HOME.'/.config/vim/config/z_colorscheme.vim', 'b')
		colorscheme gruvbox
		TransparentEnable
   elseif(a:result == 3)
		call writefile(['colorscheme dracula'], $HOME.'/.config/vim/config/z_colorscheme.vim', 'b')
		colorscheme dracula
		TransparentEnable
   elseif(a:result == 4)
       call writefile(['colorscheme catppuccin_mocha'], $HOME.'/.config/vim/config/z_colorscheme.vim', 'b')
		colorscheme catppuccin_mocha
		TransparentEnable
	elseif(a:result == 5)
		call writefile(['colorscheme rosepine'], $HOME.'/.config/vim/config/z_colorscheme.vim', 'b')
		colorscheme rosepine
		TransparentEnable
    endif
    " source $HOME/.vim/config/highlights.vim
endfunc

" Calling popup menu with color themes
call popup_menu(['tokyonight', 'gruvbox', 'dracula', 'catppuccin', 'rosepine', 'exit'], #{
                \ title: 'Choose colorscheme:', border: [],
				\ callback: 'ColorSelecting',
				\ })
