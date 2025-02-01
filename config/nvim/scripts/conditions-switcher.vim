let ctrue = "true"
let cfalse = "false"

if index(['python'], &filetype) != -1
	let ctrue = "True"
	let ctrue = "False"
endif

let word_uc = expand("<cword>")

if word_uc == ctrue
	silent execute "normal! ciw" . cfalse
elseif word_uc == cfalse
	silent execute "normal! ciw" . ctrue
endif
