local function pop_up_theme()
	local Menu = require("nui.menu")
	-- local event = require("nui.utils.autocmd").event

	local menu = Menu({
	  position = "50%",
	  size = {
		width = 22,
		height = 10,
	  },
	  border = {
		style = "single",
		text = {
		  top = " Choose theme: ",
		  top_align = "center",
		},
	  },
	  win_options = {
		winhighlight = "Normal:Normal,FloatBorder:Normal",
	  },
	},

	{
	  lines = {
		Menu.item("catppuccin-mocha"),
		Menu.item("gruvbox"),
		Menu.item("tokyonight"),
		Menu.item("kanagawa"),
		Menu.item("rose-pine"),
		Menu.item("one_monokai"),
		Menu.item("night-owl"),
		-- Menu.item("iceberg"),
		Menu.item("morta"),
		Menu.item("vague"),
		Menu.item("onedark"),
	  },
	  max_width = 20,
	  keymap = {
		focus_next = { "j", "<Down>", "<Tab>" },
		focus_prev = { "k", "<Up>", "<S-Tab>" },
		close = {  "h", "<Esc>", "<C-c>" },
		submit = { "l", "<CR>", "<Space>" },
	  },
	  on_close = function() end,
	  on_submit = function(item)
		local theme = item.text
		vim.cmd("colorscheme " .. theme)
	  end,
	})

	-- mount the component
	menu:mount()
end

vim.api.nvim_create_user_command('Theme', pop_up_theme, {})
