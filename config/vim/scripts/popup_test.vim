func! Some_func(_, result)

endfunc

func! GetText()
	call popup_menu(['1', '2', '3'], #{callback: 'Some_func'})
endfunc

call GetText()->popup_atcursor({})
