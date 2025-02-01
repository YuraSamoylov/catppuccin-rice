local map = vim.keymap

-- Autoclosing
map.set('i', '(', '()<left>')
map.set('i', '{', '{}<left>')
map.set('i', '[', '[]<left>')
map.set('i', '<', '<><left>')
map.set('i', '"', '""<left>')
map.set('i', "'", "''<left>")
map.set('v', '(', 'da()<left><esc>p')
map.set('v', '[', 'da[]"<left><esc>p')
map.set('v', '{', 'da{}<left><esc>p')
map.set('v', "'", "da''<left><esc>p")
map.set('v', '"', 'da""<left><esc>p')
map.set('v', '<', 'da<><left><esc>p')

-- Basics
-- map.set('n', '<c-s>', '<cmd>w<cr>')
-- map.set('n', '<c-q>', '<cmd>wq<cr>')
-- map.set('i', '<c-s>', '<esc><cmd>w<cr>')
-- map.set('i', '<c-q>', '<esc><cmd>wq<cr>')
-- map.set('n', '<leader>q', '<cmd>q!<cr>')
map.set('n', '-', '<cmd>source $HOME/.config/nvim/scripts/conditions-switcher.vim<cr>', { silent = true })

-- View maps
map.set('n', '<esc>', '<cmd>nohls<cr>')
map.set('n', 'mv', '<cmd>mkview<cr>')
map.set('n', 'lv', '<cmd>loadview<cr>')

-- Modes maps
map.set('i', 'jk', '<esc>')
map.set('i', 'kj', '<esc>')
map.set('i', 'jh', '<esc>')

-- Folds
map.set({'n', 'v'}, '<CR>', 'za')

-- Others
map.set('n', '+', '<cmd>ene <bar> startinsert <cr>')
map.set('n', '<leader>rr', '<cmd>Renamewords<cr>')
map.set('n', '<leader>p', ':%s///g<left><left><left>')
map.set('v', '<c-a>', ':s///<left><left>', { desc = "Rename" })
map.set('n', '<leader>ar', '<cmd>Rename<cr>')
-- map.set('n', '<a-t>', '<cmd>split<cr><cmd>terminal<cr>10<c-w>-i')
map.set('n', '<F2>', '<cmd>Theme<cr>')
map.set('n', '<F1>', '<cmd>Helpmenu<cr>')
