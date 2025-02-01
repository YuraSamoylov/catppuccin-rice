local map = vim.keymap

-- Others
map.set('n', '<leader>s', '<cmd>SymbolsOutline<cr>', { desc = "Open lsp symbols" })
map.set('n', '<leader>e', '<cmd>Oil<cr>', { desc = "Open oil explorer" })
map.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" })
map.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" })

-- Tagbar
map.set('n', 'tg', '<cmd>TagbarToggle<cr>')
map.set('n', '<c-e>', '<cmd>TagbarToggle<cr>')

-- Neotree
map.set('n', '<leader>n', '<cmd>Neotree reveal toggle<cr>', { desc = "File explorer" })
map.set('n', '<c-n>', '<cmd>Neotree reveal toggle<cr>')
map.set('n', '<leader>nl', '<cmd>Neotree left<cr>', { desc = "File explorer left" })
map.set('n', '<leader>nf', '<cmd>Neotree float<cr>', { desc = "File explorer float" })
map.set('n', '<F4>', '<cmd>Neotree focus<cr>')

-- Lsp
map.set('n', 'K', vim.lsp.buf.hover, {})
map.set('n', 'gd', vim.lsp.buf.definition, {})
map.set('n', '\\', vim.lsp.buf.definition, {})
map.set({'n', 'v'}, '<leader>a', vim.lsp.buf.code_action, { desc = "Code actions" })

-- Floaterm
map.set('n', '<leader>t', '<cmd>FloatermToggle<cr>', { desc = "Toggle terminal" })

--Telescope
map.set('n', '<leader>f', '<cmd>Telescope find_files prompt_prefix=🔍 selection_caret= <cr>', { desc = "Search files" })
map.set('n', '<leader>r', '<cmd>Telescope oldfiles prompt_prefix=🔍 selection_caret= <cr>', { desc = "Recently files" })
map.set('n', '<leader>fg', '<cmd>Telescope live_grep prompt_prefix=🔍<cr>', { desc = "Search word in files" })
map.set('n', '<leader>fd', '<cmd>Telescope diagnostics prompt_prefix=🔍<cr>', { desc = "Search diagnostics" })
map.set('n', '<c-c>', '<cmd>Telescope colorscheme prompt_prefix=🔍 selection_caret=<cr>', { desc = "Search colorschemes" })
map.set('n', '<leader>fk', '<cmd>Telescope keymaps prompt_prefix=🔍 selection_caret=<cr>', { desc = "Search mappings" })
