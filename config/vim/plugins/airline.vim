" Airline settings
let g:airline_theme='deus'
let g:airline_powerline_fonts=1
let g:airline_symbols_ascii = 1
let g:airline_inactive_collapse=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline_right_sep = ""
let g:airline_right_alt_sep = ""
let g:airline_left_sep = ""
let g:airline_left_alt_sep = ""
let g:airline_focuslost_inactive = 1
let g:airline_skip_empty_sections = 0
let g:airline#extensions#clock#auto = 0
let g:airline#extensions#clock#format = '%H:%M'
let g:airline_section_c_only_filename = 1
let g:airline_extensions = ['branch', 'tabline', 'clock']
let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#coc#show_coc_status = 1
let g:airline#extensions#lsp#enabled = 1

function! AirlineInit()
	let g:airline_section_a = airline#section#create(['mode'])
	let g:airline_section_b = airline#section#create(['file'])
	let g:airline_section_c = airline#section#create([''])
	let g:airline_section_x = airline#section#create([''])
	let g:airline_section_y = airline#section#create(['filetype'])
	let g:airline_section_z = airline#section#create(['clock'])
endfunction
autocmd User AirlineAfterInit call AirlineInit()

set noshowmode
