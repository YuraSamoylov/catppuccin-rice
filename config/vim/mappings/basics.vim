" brackets, replacing and other
imap ( ()<left>
imap < <><left>
imap { {}<left>
imap [ []<left>
nmap "" viw<esc>a"<esc>bi"<esc>lel
nmap <C-a> :%s///g<left><left><left>
imap <C-a> <esc>:%s///g<left><left><left>
vmap <C-a> <esc>:'<,'>s///<left><left>
vmap <RightMouse> <esc>
imap <RightMouse> <esc>

" Quick settings
" nmap <F6> :set cursorcolumn!<CR>
" imap <F6> <esc>:set cursorcolumn!<CR>
nmap <F5> :setlocal spell! spelllang=ru_ru,en_us<CR>
imap <F5> <esc>:setlocal spell! spelllang=ru_ru,en_us<CR>
nmap <silent> <F7> :set number!<CR>
imap <silent> <F7> <esc>:set number!<CR>
nmap <silent> <F8> :set relativenumber!<CR>
imap <silent> <F8> <esc>:set relativenumber!<CR>

" Standard keymaps
nmap - :source ~/.config/vim/scripts/cword.vim
" nmap <C-s> :w<CR>
" imap <C-s> <esc>:w<CR>
" nmap <C-q> :wq<CR>
" imap <C-q> <esc>:wq<CR>
" nmap <A-q> :q!<CR>
" imap <A-q> <esc>:q!<CR>
map , <C-f>
nmap <silent> vrc :vsplit ~/.vim/vimrc<CR>
nmap <silent> vrs :source $HOME/.vim/vimrc<CR>
nmap <silent> tm :term<CR>c<CR><C-w>k6<c-w>+
nmap <silent> tt :tabnew<cr>:term<cr><c-w>k:q<cr>

" Shortcuts
" Esc and view
imap jj <esc>
imap jk <esc>
imap jh <esc>
nmap <silent> mv :mkview<CR>
nmap <silent> lv :loadview<CR>
