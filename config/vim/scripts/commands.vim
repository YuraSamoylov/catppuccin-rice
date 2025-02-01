func! My_prompt()
    let curline = getline('.')
    call inputsave()
    let ucommand = input('Enter your command: ')
    call inputrestore()
    execute ''.ucommand
endfunc

call My_prompt()
