local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.cursorline = true -- in some colorschemes highlight current number
opt.cursorcolumn = false
opt.ignorecase = false
opt.smartcase = true
opt.wrap = true
opt.wildmenu = true
opt.hidden = true
opt.splitbelow = true
opt.splitright = true
opt.showmode = false
opt.showcmd = false
opt.swapfile = false
opt.hlsearch = true
opt.showmatch = false
opt.autoindent = true
opt.smartindent = true
opt.breakindent = true
opt.backup = false
opt.ruler = true
opt.ttimeoutlen = 0
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.wildmode = 'longest:full,full'
-- opt.signcolumn = "yes"
opt.shell = "fish"
-- opt.fillchars = {eob = " "} -- This need to disable tildas
opt.mouse = ""
opt.termguicolors = true
opt.clipboard = "unnamedplus"
opt.textwidth = 80
opt.langmap="ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"
opt.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]

-- Another
opt.completeopt = 'menuone,noselect,noinsert,popup'

-- Importing
require("scripts.theme-switcher")
require("scripts.input")
require("scripts.help")
require("scripts.rename")
require("scripts.rename_tabs")
require("scripts.rename_words")
