local nonicons_extention = require("nvim-nonicons.extentions.nvim-notify")
return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
		"nvim-lua/popup.nvim",
		{ 'nvim-lua/plenary.nvim' },
    },
	config = function()
		require("noice").setup({
			-- lsp = {
			-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
				-- override = {
					-- ["vim.lsp.util.convert_input_to_markdown_lines"] = false,
					-- ["vim.lsp.util.stylize_markdown"] = false,
					-- ["cmp.entry.get_documentation"] = false, -- requires hrsh7th/nvim-cmp
					-- progress = { enabled = true },
			        -- signature = { enabled = true },
					-- hover = { enabled = true },
				-- },
			-- },
			popupmenu = {
				enabled = true, -- enables the Noice popupmenu UI
				---@type 'cmp'
				backend = "nui", -- backend to use to show regular cmdline completions
				---@type false
				-- Icons for completion item kinds (see defaults at noice.config.icons.kinds)
				kind_icons = {}, -- set to `false` to disable icons
			},
			messages = {
				enabled = true, -- Disable message spam at the bottom
			},
			cmdline = {
				enabled = true, -- enables the Noice cmdline UI
				view = "cmdline_popup",
				opts = {}, -- global options for the cmdline. See section on views
				--@type table<string, CmdlineFormat>
				format = {
					-- conceal: (default=true) This will hide the text in the cmdline that matches the pattern.
					-- view: (default is cmdline view)
					-- opts: any options passed to the view
					-- icon_hl_group: optional hl_group for the icon
					-- title: set to anything or empty string to hide
					cmdline = { pattern = "^:", icon = "", lang = "vim" },
					search_down = { kind = "search", pattern = "^/", icon = " ", lang = "regex" },
					search_up = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
					filter = { pattern = "^:%s*!", icon = "$", lang = "bash" },
					lua = { pattern = { "^:%s*lua%s+", "^:%s*lua%s*=%s*", "^:%s*=%s*" }, icon = "", lang = "lua" },
					help = { pattern = "^:%s*he?l?p?%s+", icon = "" },
					input = { view = "cmdline_input", icon = "󰥻 " }, -- Used by input()
					-- lua = false, -- to disable a format, set to `false`
				},
			},
		})
		require("notify").setup({
			icons = nonicons_extention.icons,
		})
	end
}
