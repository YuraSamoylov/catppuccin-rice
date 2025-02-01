local cmd = vim.cmd

cmd.autocmd "Filetype oil setlocal nonumber norelativenumber nocursorline"
-- cmd.autocmd "Filetype alpha setlocal background=dark | colorscheme tokyonight"
-- cmd.autocmd "Filetype NvimTree setlocal nonumber"

cmd.autocmd "Filetype python set textwidth=79"
cmd.autocmd "Filetype html nmap ht :-1read $HOME/.config/nvim/templates/template.html<CR>Gddgg"
cmd.autocmd "Filetype python nmap py :-1read $HOME/.config/nvim/templates/template.py<CR>Gddgg"
cmd.autocmd "Filetype cpp nmap cpp :-1read $HOME/.config/nvim/templates/template.py<CR>Gddgg"
cmd.autocmd "Filetype go nmap go :-1read $HOME/.config/nvim/templates/template.go<CR>Gddgg"
cmd.autocmd "Filetype css nmap css :-1read $HOME/.config/nvim/templates/template.css<CR>Gddgg"

vim.cmd [[autocmd BufEnter * set fo-=c fo-=r fo-=o]]

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'fish',
  callback = function()
    vim.lsp.start({
      name = 'fish-lsp',
      cmd = { 'fish-lsp', 'start' },
      cmd_env = { fish_lsp_show_client_popups = false },
    })
  end,
})

vim.api.nvim_exec([[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=300}
augroup end
]], false)

  vim.api.nvim_create_autocmd('User', {
    pattern = 'MasonToolsStartingInstall',
    callback = function()
      vim.schedule(function()
        print 'mason-tool-installer is starting'
      end)
    end,
  })

    vim.api.nvim_create_autocmd('User', {
    pattern = 'MasonToolsUpdateCompleted',
    callback = function(e)
      vim.schedule(function()
        print(vim.inspect(e.data)) -- print the table that lists the programs that were installed
      end)
    end,
  })
