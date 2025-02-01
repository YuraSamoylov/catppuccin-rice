return {
	{
		"hrsh7th/cmp-nvim-lsp"
	},
	{
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-buffer",
		'hrsh7th/cmp-emoji',
		'hrsh7th/cmp-nvim-lsp-signature-help',
		'delphinus/cmp-ctags'
	},
		{
		"dense-analysis/ale",
		"powerman/vim-plugin-ruscmd"
	},
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
		build = "make install_jsregexp",
	},
		{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-cmdline"
		},
		config = function()
			require("luasnip.loaders.from_vscode").lazy_load()
			local cmp = require('cmp')
			cmp.setup({
				snippet = {
				  expand = function(args)
					require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
				  end,
				},
				window = {
				  completion = cmp.config.window.bordered(),
				  documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
				  ['<C-b>'] = cmp.mapping.scroll_docs(-4),
				  ['<C-f>'] = cmp.mapping.scroll_docs(4),
				  ['<tab>'] = cmp.mapping.select_next_item(),
				  ['<s-tab>'] = cmp.mapping.select_prev_item(),
				  ['<c-space>'] = cmp.mapping.complete(),
				  ['<C-e>'] = cmp.mapping.abort(),
				  ['<CR>'] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
				  { name = 'treesitter' },
				  { name = 'path' },
				  { name = 'nvim_lsp' },
				  { name = 'luasnip' }, -- For luasnip users.
				  { name = 'emoji' },
				  { name = 'nvim_lsp_signature_help' },
				  { name = 'buffer' },
				  { name = "ctags" },
				})
		  })
		  cmp.setup.cmdline({ '/', '?' }, {
			mapping = cmp.mapping.preset.cmdline(),
			sources = {
			  { name = 'buffer' }
			}
		  })
		  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
		 cmp.setup.cmdline(':', {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
			  { name = 'path' },
			}, {
			  { name = 'cmdline' }
			}),
			matching = { disallow_symbol_nonprefix_matching = false }
		  })
		  local lspkind = require('lspkind')
	cmp.setup {
	  formatting = {
		format = lspkind.cmp_format({
		  mode = 'symbol_text', -- show only symbol annotations
		  maxwidth = {
			-- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
			-- can also be a function to dynamically calculate max width such as
			-- menu = function() return math.floor(0.45 * vim.o.columns) end,
			menu = 50, -- leading text (labelDetails)
			abbr = 50, -- actual suggestion item
		  },
		  ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
		  show_labelDetails = true, -- show labelDetails in menu. Disabled by default

		  -- The function below will be called before any actual modifications from lspkind
		  -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
		  before = function (entry, vim_item)
			-- ...
			return vim_item
		  end
		})
	  }
	}
	end
	}
}
