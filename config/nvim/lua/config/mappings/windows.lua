local map = vim.keymap
local opts = {remap = true, silent=true}

-- Splits
map.set('n', '<leader>s', ':split<space>')
map.set('n', '<leader>v', ':vsplit<space>')
map.set('n', '<c-j>', '<c-w>j')
map.set('n', '<c-k>', '<c-w>k')
map.set('n', '<c-h>', '<c-w>h')
map.set('n', '<c-l>', '<c-w>l')
-- map.set('n', '<cr>', '<c-w>w')
map.set('n', '<c-up>', '<c-w>-')
map.set('n', '<c-down>', '<c-w>+')
map.set('n', '<c-left>', '<c-w>>')
map.set('n', '<c-right>', '<c-w><')

-- Tabs
map.set('n', '<c-t>', ':tabnew<space>')
map.set('n', '<tab>', '<cmd>tabnext<cr>')
map.set('n', '<s-tab>', '<cmd>tabprev<cr>')
map.set('n', '<leader><tab>', '<cmd>RenameTab<cr>')
map.set('n', ',<tab>', '<cmd>Telescope telescope-tabs list_tabs<cr>')
