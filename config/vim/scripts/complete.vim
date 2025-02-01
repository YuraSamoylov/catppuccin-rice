" My autocomplete
func! Complete()
    imap ret return<space>
    if index(['html'], &filetype) != -1
        nmap ht :-1read $HOME/.vim/templates/template.html<CR>Gddgg
        imap dv<C-n> <div class=""><CR><CR></div><left><delete><delete><up>
        imap bd<C-n> <body class=""><CR><CR></body><left><delete><delete><up>
        imap p<C-n> <p class=""></p><left><delete><delete>
        imap ul<C-n> <ul class=""><CR><CR></ul><left><delete><delete><up>
        imap ol<C-n> <ol class=""><CR><CR></ol><left><delete><delete><up>
        imap as<C-n> <aside class=""><CR><CR></aside><left><delete><delete><up>
    elseif index(['python'], &filetype) != -1
        nmap py :-1read $HOME/.vim/templates/template.py<CR>Gddgg
        imap nm<C-n> if<space>__name__<space>==<space>"__main__":<CR>main(
        imap im<C-n> import<space>
        imap fr<C-n> from<space><space>import<space>jj8ha
        imap #!<C-n> #!/usr/bin/env python3
    elseif index(['cpp'], &filetype) != -1
        nmap cpp :-1read $HOME/.vim/templates/template.cpp<CR>Gddgg
        imap << <<>><left><left><delete><delete><delete>
    elseif index(['c'], &filetype) != -1
        nmap cl :-1read $HOME/.vim/templates/template.c<CR>Gddgg
    elseif index(['css'], &filetype) != -1
        nmap css :-1read $HOME/.vim/templates/template.css<CR>Gddgg
    elseif index(['cs'], &filetype) != -1
        nmap cs :-1read $HOME/.vim/templates/template.cs<CR>Gddgg
        imap cwl Console.WriteLine(
        imap crl Console.ReadLine(
    elseif index(['conf'], &filetype) != -1
        source $HOME/.vim/config/highlights.vim
        set filetype=nsl
    elseif index(['text'], &filetype) != -1
        source $HOME/.vim/config/highlights.vim
        set filetype=txt
    endif
endfunc

call Complete()
