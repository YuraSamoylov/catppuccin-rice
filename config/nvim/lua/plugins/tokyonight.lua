return {
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
	config = function()
		require("tokyonight").setup({
			style = "storm",
			transparent = true,
			styles = {
			    sidebars = "transparent",
				-- floats = "transparent",
			},
			-- terminal_colors = true,
		})

	end
}
