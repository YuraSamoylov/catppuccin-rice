" nmap <leader>n <cmd>NERDTreeToggle<cr>
" nmap - <cmd>NERDTreeMapUpdir<cr>
let g:ranger_map_keys = 0
let g:ranger_replace_netrw = 1 " open ranger when vim open a directory
nmap <leader>n <cmd>RangerCurrentFileNewTab<cr>
nmap <leader>e <cmd>vsplit<cr><cmd>RangerCurrentFile<cr>
nmap <leader>f <cmd>Files<cr>

" let g:nerdtree_vis_confirm_open=0
" let g:nerdtree_vis_confirm_delete=0
" let g:nerdtree_vis_confirm_append_arglist=0

" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif
