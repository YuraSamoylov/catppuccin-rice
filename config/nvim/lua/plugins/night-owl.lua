return {
  "oxfist/night-owl.nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  config = function()
    require("night-owl").setup({
		bold = true,
	    italics = true,
		underline = true,
		undercurl = true,
		transparent_background = true,
	})
  end,
}
