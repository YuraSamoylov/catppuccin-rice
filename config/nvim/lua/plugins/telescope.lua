return {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		dependencies = { 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep' },
		config = function()
			require("telescope").load_extension("ui-select")
			require('telescope').load_extension('nerdy')
			require("telescope").setup {
			  extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown {
				},
			  },
			  fzf = {
			      fuzzy = true,                    -- false will only do exact matching
			      override_generic_sorter = true,  -- override the generic sorter
			      override_file_sorter = true,     -- override the file sorter
					case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
				}
			 },
			}
		end
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release',
	},
	{
		'2kabhishek/nerdy.nvim',
		dependencies = {
			'stevearc/dressing.nvim',
			'nvim-telescope/telescope.nvim',
		},
		cmd = 'Nerdy',
	},
	{
		'LukasPietzschmann/telescope-tabs',
		config = function()
			require('telescope').load_extension 'telescope-tabs'
			require('telescope-tabs').setup {
				show_preview = true,
				entry_ordinal = function(tab_id, buffer_ids, file_names, file_paths, is_current)
					return table.concat(file_names, ' ')
				end,
				entry_formatter = function(tab_id, buffer_ids, file_names, file_paths, is_current)
					local entry_string = table.concat(file_names, ', ')
					return string.format('%d: %s%s', tab_id, entry_string, is_current and ' <' or '')
				end,
			}
		end,
		dependencies = { 'nvim-telescope/telescope.nvim' },
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
	}
}
