" Settings file

" Cursor shape
" Reference chart of values:
" Ps = 0 -> blinking block
" Ps = 1 -> blinking block (default)
" Ps = 2 -> steady block
" Ps = 3 -> blinking underline
" Ps = 4 -> steady underline
" Ps = 5 -> blinking bar (xterm)                                                                 
" Ps = 6 -> steady bar (xterm)

let &t_SI = "\e[6 q"
let &t_SR = "\e[4 q"
let &t_EI = "\e[2 q"

" hide tilda characters on empty lines
let &fillchars ..= ',eob: '

" Toggle fzf in vim 
set path+=**

filetype on

" base settings
syntax on
set number rnu cul
set mouse=
set smarttab
set preserveindent breakindent
set nohlsearch noswapfile
set splitbelow 
set splitright
set wildmenu
set lazyredraw
set tabstop=4 shiftwidth=4 softtabstop=4
set history=1024
set termguicolors
set clipboard+=unnamedplus

" Tweaks for file browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
