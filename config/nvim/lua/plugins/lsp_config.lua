return {
	{
	"williamboman/mason.nvim",
	config = function()
		require("mason").setup()
	end
	},
	{
		'onsails/lspkind-nvim',
		config = function ()
			require('lspkind').init({
				-- DEPRECATED (use mode instead): enables text annotations
				--
				-- default: true
				-- with_text = true,

				-- defines how annotations are shown
				-- default: symbol
				-- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
				mode = 'symbol_text',

				-- default symbol map
				-- can be either 'default' (requires nerd-fonts font) or
				-- 'codicons' for codicon preset (requires vscode-codicons font)
				--
				-- default: 'default'
				preset = 'default',

				-- override preset symbols
				-- default: {}
				symbol_map = {
				  Text = "󰉿",
				  Method = "󰆧",
				  Function = "󰊕",
				  Constructor = "",
				  Field = "󰜢",
				  Variable = "", --󰀫
				  Class = "󰠱",
				  Interface = "",
				  Module = "",
				  Property = "󰜢",
				  Unit = "󰑭",
				  Value = "󰎠",
				  Enum = "",
				  Keyword = "󰌋",
				  Snippet = "",
				  Color = "󰏘",
				  File = "󰈙",
				  Reference = "󰈇",
				  Folder = "󰉋",
				  EnumMember = "",
				  Constant = "󰏿",
				  Struct = "󰙅",
				  Event = "",
				  Operator = "󰆕",
				  TypeParameter = "",
				},
			})
		end
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function ()
			require('mason-tool-installer').setup {

  -- a list of all tools you want to ensure are installed upon
  -- start
  ensure_installed = {
    -- you can turn off/on auto_update per tool
    'bash-language-server',
    'lua-language-server',
    'vim-language-server',
	'clangd',
	'pyright',
    'stylua',
    'editorconfig-checker',
    'impl',
    'luacheck',
    'misspell',
    'revive',
    'shfmt',
    'staticcheck',
    'vint',
  },
  auto_update = true,
  run_on_start = true,
  start_delay = 3000, -- 3 second delay
  debounce_hours = 5, -- at least 5 hours between attempts to install/update
  integrations = {
    ['mason-lspconfig'] = true,
    ['mason-null-ls'] = true,
    ['mason-nvim-dap'] = true,
  },
}
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {"lua_ls", "clangd", "pyright"}
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{ "antosha417/nvim-lsp-file-operations", config = true },
		},
		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities
			})
			lspconfig.clangd.setup({
				capabilities = capabilities
			})
			lspconfig.pyright.setup({
				capabilities = capabilities
			})
			lspconfig.bashls.setup({
				capabilities = capabilities
			})
			lspconfig.vimls.setup({
				capabilities = capabilities
			})
		end
	},
	{
	"folke/trouble.nvim",
	opts = {}, -- for default options, refer to the configuration section for custom setup.
	cmd = "Trouble",
	keys = {
		{
			"<leader>x",
			"<cmd>Trouble diagnostics toggle win.position=bottom<cr>",
			desc = "Diagnostics (Trouble)",
		},
	},
	},
}
