return {
	{"ellisonleao/gruvbox.nvim", priority = 1000 ,
	config = function()
		require("gruvbox").setup({
		  terminal_colors = true, -- add neovim terminal colors
		  undercurl = true,
		  underline = true,
		  bold = true,
		  transparent_mode = true,
		})
	end
	}
}
