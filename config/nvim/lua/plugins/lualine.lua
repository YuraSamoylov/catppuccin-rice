return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function ()
		require('lualine').setup {
		  options = {
			icons_enabled = true,
			theme = 'catppuccin-mocha',
			component_separators = {left = '', right = ''},
			section_separators = { left = '', right = '' },
		  },
		  sections = {
			lualine_a = { { "mode", separator = { right = '' }, right_padding = 2 } },
			lualine_b = {
				{
					'filename',
					file_status = true,      -- Displays file status (readonly status, modified status)
					newfile_status = false,  -- Display new file status (new file means no write after created)
					path = 0,                -- 0: Just the filename
											 -- 1: Relative path
											 -- 2: Absolute path
											 -- 3: Absolute path, with tilde as the home directory
											 -- 4: Filename and parent dir, with tilde as the home directory

					symbols = {
						modified = '',      -- Text to show when the file is modified. 
						readonly = '',      -- Text to show when the file is non-modifiable or readonly.
						unnamed = '', -- Text to show for unnamed buffers.
						newfile = '+',     -- Text to show for newly created file before first write
				}
			},
			},
			lualine_c = {'diagnostics', 'searchcount'},
			lualine_x = {'filetype'},
			lualine_y = {
				-- { 'location', separator = {left = '', right = ''}, left_padding = 0 },
				-- 'progress', --progress in file in percents
				{'datetime', style = '%d.%m'} -- {'datetime', style = '%d.%m ( %H:%M'}
			},
			lualine_z = {
				-- get_lang(),
				{'datetime', style = '%H:%M'},
			},
		  },
		  inactive_sections = {
			lualine_a = { {'filename'} },
			lualine_b = {},
			lualine_c = {},
			lualine_x = {},
			lualine_y = {{'filetype'}},
			lualine_z = { 'location' },
		  },

		  winbar = {
				lualine_a = {--[[ 'filename' ]]},
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {}
			},

		  tabline = {
			lualine_a = {{'tabs', mode = 1, path = 0, separator = {right = '', left = ''},
						symbols = {
							modified = ' ',      -- Text to show when the file is modified.
							readonly = ' ',      -- Text to show when the file is non-modifiable or readonly.
							unnamed = ' ', -- Text to show for unnamed buffers.
							newfile = ' +',     -- Text to show for newly created file before first write
						},
			}
			},
			lualine_b = {},
			lualine_c = {},
			lualine_x = {},
			lualine_y = {},
			lualine_z = {
				{'tabs', mode = 0, path = 0, separator = {right = '', left = ''},
							symbols = {
								modified = ' ',      -- Text to show when the file is modified.
								readonly = ' ',      -- Text to show when the file is non-modifiable or readonly.
								unnamed = ' ', -- Text to show for unnamed buffers.
								newfile = ' +',     -- Text to show for newly created file before first write
							},
				}
			},
		  },
		  extensions = {'lazy', 'neo-tree', 'symbols-outline'},
		}
	end
}
