return {
		"goolord/alpha-nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"nvim-lua/plenary.nvim",

		},
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- Set header
		dashboard.section.header.val = {
			 [[                                                                     ]],
			 [[       ████ ██████           █████      ██                     ]],
			 [[      ███████████             █████                             ]],
			 [[      █████████ ███████████████████ ███   ███████████   ]],
			 [[     █████████  ███    █████████████ █████ ██████████████   ]],
			 [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
			 [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
			 [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
			 [[                                                                       ]],
			 [[                                                                       ]],
			 os.date("\t\t\t\t\t\t Today is %d(%A) of %B"),
		}

		-- Set footer
		    dashboard.section.footer.val = {
			 [[								Current leader map is space						  ]],
			 -- [[																				  ]],
			 -- [[										 ／l、									  ]],
			 -- [[										(ﾟ､ ｡７	   								  ]],
			 -- [[										 l、ﾞ~ヽ								  ]],
			 -- [[										 じしf_, )ノ							  ]],
			}
		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button( "SPC h", "  Help", "<cmd>Helpmenu<cr>"),
			dashboard.button( "SPC e", "  New file" , "<cmd>ene <bar> startinsert <cr>"),
			dashboard.button( "SPC f", "  Find file", "<cmd>Telescope find_files<cr>"),
			dashboard.button( "SPC r", "  Recent"   , "<cmd>Telescope oldfiles<cr>"),
			dashboard.button( "SPC n", "󰌪  File explorer" , "<cmd>Neotree toggle<cr>"),
			dashboard.button( "SPC t", "  Terminal" , "<cmd>FloatermToggle<cr>"),
			dashboard.button( "SPC c", "  Configuration" , "<cmd>e $MYVIMRC<cr><cmd>Neotree left dir=~/.config/nvim/lua/<cr>"),
			dashboard.button("SPC s", "  Update plugins", "<cmd>Lazy sync<cr>"),
			dashboard.button( "SPC q", "  Quit NVIM", "<cmd>qa<cr>"),
		}

		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer and neotree
		vim.cmd("autocmd FileType alpha setlocal nofoldenable nocursorline")
	end
}
