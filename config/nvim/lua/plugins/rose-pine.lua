return {
"rose-pine/neovim", name = "rose-pine",
config = function()
	require("rose-pine").setup({
		variant = "moon",
		dim_inactive_windows = false,
		styles = {
			bold = true,
			italic = true,
			transparency = true,
		},
	})

end
}
