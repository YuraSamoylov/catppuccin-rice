return {
	{
		'folke/which-key.nvim',
		{ 'echasnovski/mini.nvim', version = '*' },
		event = "VeryLazy",
		opts = {
			preset = "modern",
			triggers = {
				{ "<leader>", mode = { "n", "v" } },
			},
			window = {
				border = "double", -- или 'double', 'shadow', 'none'
				opacity = 0, -- Установите значение между 0 и 100 для прозрачности
				position = "bottom",
				margin = { 1, 2, 1, 2 },
				padding = { 2, 2, 2, 2 },
				winblend = 100,
			},
		   layout = {
				   height = { min = 4, max = 25 },
			       width = { min = 20, max = 50 },
				   spacing = 3,
				   align = "left",
		       },
			key_labels = {
			-- override the label used to display some keys. It doesn't effect WK in any other way.
			-- For example:
			["<space>"] = "SPC",
			["<cr>"] = "RET",
			["<tab>"] = "TAB",
			},
			motions = {
				count = true,
			},
			icons = {
				breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
				separator = "➜", -- symbol used between a key and it's label
				group = "", -- symbol prepended to a group
			},
			notify = true,
			plugins = {
				marks = true, -- shows a list of your marks on ' and `
				registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
				-- the presets plugin, adds help for a bunch of default keybindings in Neovim
				-- No actual key bindings are created
				presets = {
				  operators = true, -- adds help for operators like d, y, ...
				  motions = true, -- adds help for motions
				  text_objects = true, -- help for text objects triggered after entering an operator
				  windows = true, -- default bindings on <c-w>
				  nav = true, -- misc bindings to work with windows
				  z = true, -- bindings for folds, spelling and others prefixed with z
				  g = true, -- bindings for prefixed with g
				},
			  },
		},
		keys = {
			{
			  "<leader>?",
			  function()
				require("which-key").show({ global = true })
			  end,
			  desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
	-- to use a version
	{
		'mrjones2014/legendary.nvim',
		version = 'v2.13.9',
		-- since legendary.nvim handles all your keymaps/commands,
		-- its recommended to load legendary.nvim before other plugins
		priority = 10000,
		lazy = false,
		-- sqlite is only needed if you want to use frecency sorting
		-- dependencies = { 'kkharji/sqlite.lua' }
	},
}
