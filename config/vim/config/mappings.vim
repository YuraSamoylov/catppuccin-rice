"setting leader map
let mapleader = " "





" Tabs and splits
nmap <silent> tn :tabnew<space>
nmap <silent> tj :tabnext<CR>
nmap <silent> tk :tabprev<CR>
nmap <silent> th :tabfirst<CR>
nmap <silent> tl :tablast<CR>
nmap <silent> vs :vsplit<space>
nmap <silent> sp :split<space>
nmap <C-j> <c-w>j
nmap <C-k> <c-w>k
nmap <C-h> <c-w>h
nmap <C-l> <c-w>l
noremap <c-up> <c-w>-
noremap <c-down> <c-w>+
noremap <c-left> <c-w>>
noremap <c-right> <c-w><




let folder_path = $HOME . '/.config/vim/mappings/'
let files = split(glob(folder_path . '*'), '\n')

for file in files
	execute 'source' file
endfor
