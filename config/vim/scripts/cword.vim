let word_uc = expand("<cword>")

if word_uc == "true"
	execute "normal! ciw" . "false"
elseif word_uc == "false"
	execute "normal! ciw" . "true"
endif

" true
" false
" word
