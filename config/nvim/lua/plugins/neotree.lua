return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		{
        's1n7ax/nvim-window-picker',
        version = '2.*',
        config = function()
            require 'window-picker'.setup({
                filter_rules = {
                    include_current_win = false,
                    autoselect_one = true,
                    -- filter using buffer options
                    bo = {
                        -- if the file type is one of following, the window will be ignored
                        filetype = { 'neo-tree', "neo-tree-popup", "notify" },
                        -- if the buffer type is one of following, the window will be ignored
                        buftype = { 'terminal', "quickfix" },
                    },
            },
        })
        end,
      },
	},
	config = function ()
		local map = vim.keymap

--		require('transparent').clear_prefix('NeoTree')

		vim.fn.sign_define("DiagnosticSignError",
		  {text = " ", texthl = "DiagnosticSignError"})
		vim.fn.sign_define("DiagnosticSignWarn",
		  {text = " ", texthl = "DiagnosticSignWarn"})
		vim.fn.sign_define("DiagnosticSignInfo",
		  {text = " ", texthl = "DiagnosticSignInfo"})
		vim.fn.sign_define("DiagnosticSignHint",
		  {text = "󰌵", texthl = "DiagnosticSignHint"})
		require("neo-tree").setup({
			vim.fn.sign_define("DiagnosticSignError",
			{text = " ", texthl = "DiagnosticSignError"}),
			vim.fn.sign_define("DiagnosticSignWarn",
			{text = " ", texthl = "DiagnosticSignWarn"}),
			vim.fn.sign_define("DiagnosticSignInfo",
			{text = " ", texthl = "DiagnosticSignInfo"}),
			vim.fn.sign_define("DiagnosticSignHint",
			{text = "󰌵", texthl = "DiagnosticSignHint"}),
			diagnostics = {
				symbols = {
					hint = "󰌵 ",
					info = " ",
					warn = " ",
					error = " ",
				},
				highlights = {
					hint = "DiagnosticSignHint",
					info = "DiagnosticSignInfo",
					warn = "DiagnosticSignWarn",
					error = "DiagnosticSignError",
					},
			},
			close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
			popup_border_style = "rounded",
			enable_git_status = true,
			enable_diagnostics = false,
			open_files_do_not_replace_types = { "terminal", "trouble", "qf" }, -- when opening files, do not use windows containing these filetypes or buftypes
			sort_case_insensitive = false, -- used when sorting files and directories in the tree
			default_component_configs = {
			  container = {
				enable_character_fade = true
			  },
			  indent = {
				indent_size = 2,
				padding = 1, -- extra padding on left hand side
				-- indent guides
				with_markers = true,
				indent_marker = "│",
				last_indent_marker = "└",
				highlight = "NeoTreeIndentMarker",
				-- expander config, needed for nesting files
				with_expanders = nil, -- if nil and file nesting is enabled, will enable expanders
				expander_collapsed = ">", -- buffersdefault is >
				expander_expanded = "", --default is 
				expander_highlight = "NeoTreeExpander",
			  },
			  icon = {
				folder_closed = "",
				folder_open = "",
				folder_empty = "", -- 󰜌
				-- The next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
				-- then these will never be used.
				default = "", -- default is *
				highlight = "NeoTreeFileIcon"
			  },
			  modified = {
				symbol = "", --
				highlight = "NeoTreeModified",
			  },
			  name = {
				trailing_slash = false,
				use_git_status_colors = true,
				highlight = "NeoTreeFileName",
			  },
			  -- If you don't want to use these columns, you can set `enabled = false` for each of them individually
			  file_size = {
				enabled = true,
				required_width = 64, -- min width of window required to show this column
			  },
			  type = {
				enabled = true,
				required_width = 122, -- min width of window required to show this column
			  },
			  last_modified = {
				enabled = true,
				required_width = 88, -- min width of window required to show this column
			  },
			  created = {
				enabled = true,
				required_width = 110, -- min width of window required to show this column
			  },
			  symlink_target = {
				enabled = false,
			  },
			},
			-- A list of functions, each representing a global custom command
			-- that will be available in all sources (if not overridden in `opts[source_name].commands`)
			-- see `:h neo-tree-custom-commands-global`
			commands = {},
			window = {
			  position = "left",
			  width = 30,
			  mapping_options = {
				noremap = true,
				nowait = true,
			  },
			  mappings = {
				["<space>"] = {
					"toggle_node",
					nowait = true, -- disable `nowait` if you have existing combos starting with this char that you want to use 
				},
				["<2-LeftMouse>"] = "open",
				["<cr>"] = "open",
				["<esc>"] = "cancel", -- close preview or floating neo-tree window
				["P"] = { "toggle_preview", config = { use_float = true, use_image_nvim = true } },
				-- Read `# Preview Mode` for more information
				["l"] = "open",
				["s"] = "open_split",
				["v"] = "open_vsplit",
				-- ["S"] = "split_with_window_picker",
				-- ["s"] = "vsplit_with_window_picker",
				["t"] = "open_tabnew",
				-- ["<cr>"] = "open_drop",
				-- ["t"] = "open_tab_drop",
				["w"] = "open_with_window_picker",
				--["P"] = "toggle_preview", -- enter preview mode, which shows the current node without focusing
				["C"] = "close_node",
				-- ['C'] = 'close_all_subnodes',
				["z"] = "close_all_nodes",
				--["Z"] = "expand_all_nodes",
				["a"] = {
				  "add",
				  -- this command supports BASH style brace expansion ("x{a,b,c}" -> xa,xb,xc). see `:h neo-tree-file-actions` for details
				  -- some commands may take optional config options, see `:h neo-tree-mappings` for details
				  config = {
					show_path = "none" -- "none", "relative", "absolute"
				  }
				},
				["A"] = "add_directory", -- also accepts the optional config.show_path option like "add". this also supports BASH style brace expansion.
				["d"] = "delete",
				["r"] = "rename",
				["y"] = "copy_to_clipboard",
				["x"] = "cut_to_clipboard",
				["p"] = "paste_from_clipboard",
				["c"] = "copy", -- takes text input for destination, also accepts the optional config.show_path option like "add":
				["m"] = "move", -- takes text input for destination, also accepts the optional config.show_path option like "add".
				["q"] = "close_window",
				["R"] = "refresh",
				["?"] = "show_help",
				["<"] = "prev_source",
				[">"] = "next_source",
				["i"] = "show_file_details",
			  }
			},
			nesting_rules = {},
			filesystem = {
			  filtered_items = {
				visible = true, -- when true, they will just be displayed differently than normal items
				hide_dotfiles = false,
				hide_gitignored = false,
				hide_hidden = false, -- only works on Windows for hidden files/directories		  
			},
			  follow_current_file = {
				enabled = true, -- This will find and focus the file in the active buffer every time
				--               -- the current file is changed while the tree is open.
				leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
			  },
			  group_empty_dirs = false, -- when true, empty folders will be grouped together
			  hijack_netrw_behavior = "disabled", -- netrw disabled, opening a directory opens neo-tree
													  -- in whatever position is specified in window.position
									-- "open_current",  -- netrw disabled, opening a directory opens within the
													  -- window like netrw would, regardless of window.position
									-- "disabled",    -- netrw left alone, neo-tree does not handle opening dirs
			  use_libuv_file_watcher = false, -- This will use the OS level file watchers to detect changes
			  window = {
				mappings = {
				  ["<bs>"] = "navigate_up", -- <bs> means backspace
				  ["-"] = "navigate_up",
				  ["h"] = "navigate_up",
				  ["."] = "set_root",
				  ["H"] = "toggle_hidden",
				  ["/"] = "fuzzy_finder",
				  ["D"] = "fuzzy_finder_directory",
				  ["#"] = "fuzzy_sorter", -- fuzzy sorting using the fzy algorithm
				  -- ["D"] = "fuzzy_sorter_directory",
				  ["f"] = "filter_on_submit",
				  ["<c-x>"] = "clear_filter",
				  ["[g"] = "prev_git_modified",
				  ["]g"] = "next_git_modified",
				  ["o"] = { "show_help", nowait=false, config = { title = "Order by", prefix_key = "o" }},
				  ["oc"] = { "order_by_created", nowait = false },
				  ["od"] = { "order_by_diagnostics", nowait = false },
				  ["og"] = { "order_by_git_status", nowait = false },
				  ["om"] = { "order_by_modified", nowait = false },
				  ["on"] = { "order_by_name", nowait = false },
				  ["os"] = { "order_by_size", nowait = false },
				  ["ot"] = { "order_by_type", nowait = false },
				  -- ['<key>'] = function(state) ... end,
				},
				fuzzy_finder_mappings = { -- define keymaps for filter popup window in fuzzy_finder_mode
				  ["<down>"] = "move_cursor_down",
				  ["<C-n>"] = "move_cursor_down",
				  ["<up>"] = "move_cursor_up",
				  ["<C-p>"] = "move_cursor_up",
				  -- ['<key>'] = function(state, scroll_padding) ... end,
				},
			  },

			  commands = {} -- Add a custom command or override a global one using the same function name
			},
			buffers = {
			  follow_current_file = {
				enabled = true, -- This will find and focus the file in the active buffer every time
				--              -- the current file is changed while the tree is open.
				leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
			  },
			  group_empty_dirs = true, -- when true, empty folders will be grouped together
			  show_unloaded = true,
			  window = {
				mappings = {
				  ["bd"] = "buffer_delete",
				  ["<bs>"] = "navigate_up",
				  ["h"] = "navigate_up",
				  ["-"] = "navigate_up",
				  ["."] = "set_root",
				  ["o"] = { "show_help", nowait=false, config = { title = "Order by", prefix_key = "o" }},
				  ["oc"] = { "order_by_created", nowait = false },
				  ["od"] = { "order_by_diagnostics", nowait = false },
				  ["om"] = { "order_by_modified", nowait = false },
				  ["on"] = { "order_by_name", nowait = false },
				  ["os"] = { "order_by_size", nowait = false },
				  ["ot"] = { "order_by_type", nowait = false },
				}
			  },
			},
			git_status = {
			  window = {
				position = "float",
				mappings = {
				  ["A"]  = "git_add_all",
				  ["gu"] = "git_unstage_file",
				  ["ga"] = "git_add_file",
				  ["gr"] = "git_revert_file",
				  ["gc"] = "git_commit",
				  ["gp"] = "git_push",
				  ["gg"] = "git_commit_and_push",
				  ["o"] = { "show_help", nowait=false, config = { title = "Order by", prefix_key = "o" }},
				  ["oc"] = { "order_by_created", nowait = false },
				  ["od"] = { "order_by_diagnostics", nowait = false },
				  ["om"] = { "order_by_modified", nowait = false },
				  ["on"] = { "order_by_name", nowait = false },
				  ["os"] = { "order_by_size", nowait = false },
				  ["ot"] = { "order_by_type", nowait = false },
				}
			  }
			}
		})
	end
}
