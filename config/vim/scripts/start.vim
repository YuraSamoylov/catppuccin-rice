"Vim Enters
func! Start()
    if argc() == 0 && !exists('s:std_in')
        " Source file with highlight settings
        " source $HOME/.vim/config/highlights.vim
        " :-1read ~/.vim/menu
        " set cursorline!
        " set number!
        " Main filetype for menu 
        " set filetype=sun
        " nmap n :set cursorline<CR>:set number<CR>gg0cG
        NERDTreeToggle
        wincmd p
        " only
    else
        NERDTreeFind
        wincmd p
        silent loadview
    endif
endfunc

call Start()
