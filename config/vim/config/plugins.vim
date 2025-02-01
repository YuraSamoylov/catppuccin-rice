call plug#begin("~/.local/share/vim/plugins/")
	" Colorschemes and appearence
	Plug 'catppuccin/vim', { 'as': 'catppuccin' }
	Plug 'ghifarit53/tokyonight-vim'
	Plug 'nordtheme/vim'
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'rose-pine/vim'
	Plug 'morhetz/gruvbox'
	Plug 'ryanoasis/vim-devicons'
	Plug 'vim-airline/vim-airline'
	Plug 'enricobacis/vim-airline-clock'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'tribela/vim-transparent'
	Plug 'mhinz/vim-startify'

	" Autocomplete and Lsp and syntax
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'neoclide/coc-snippets'
	Plug 'SirVer/ultisnips'
	Plug 'prabirshrestha/vim-lsp'
	Plug 'mattn/vim-lsp-settings'
	Plug 'prabirshrestha/asyncomplete-lsp.vim'
	" Plug 'vim-syntastic/syntastic'
	Plug 'ervandew/supertab'
	Plug 'dense-analysis/ale'

	" File explorers
	Plug 'nvim-tree/nvim-web-devicons' " optional
	Plug 'francoiscabrol/ranger.vim'
	Plug 'preservim/nerdtree'
	Plug 'PhilRunninger/nerdtree-buffer-ops'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'weirongxu/coc-explorer'

	" Other
	Plug 'voldikss/vim-floaterm'
	Plug 'tpope/vim-commentary'
	Plug 'preservim/tagbar'
	Plug 'ap/vim-css-color'
call plug#end()

filetype plugin indent on
let folder_path = $HOME . '/.config/vim/plugins/'

let files = split(glob(folder_path . '*'), '\n')

for file in files
	execute 'source' file
endfor
