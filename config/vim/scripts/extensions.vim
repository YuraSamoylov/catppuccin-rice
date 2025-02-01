func! Selecting(_, result)
    if(a:result == 1)
        NERDTreeToggle
        wincmd p
    elseif(a:result == 2)
        Files
    elseif(a:result == 3)
        TagbarToggle
        wincmd p
    elseif(a:result == 4)
        tabnew 
    elseif(a:result == 5)
        vsplit
    elseif(a:result == 6)
        split
    endif
endfunc

call popup_menu(['file explorer', 'file finder', 'tagbar', 'new tab', 'new vsplit', 'new split', 'exit'], #{
\ title: 'Choose option:', border: [], 
\callback: 'Selecting', 
\})
