return {
	 {
        -- Parenthesis highlighting
        "p00f/nvim-ts-rainbow",
        after = "nvim-treesitter",
      },
	"JoosepAlviste/nvim-ts-context-commentstring",
	'nvim-treesitter/nvim-treesitter',
	'nvim-treesitter/nvim-treesitter-textobjects',
	'RRethy/nvim-treesitter-textsubjects',
	'nfrid/treesitter-utils',
	'm-demare/hlargs.nvim',
	'desdic/agrolens.nvim',
	config = function ()
		require'nvim-treesitter.configs'.setup {
			ensure_installed = {"c", "lua", "vim", "vimdoc", "python", "cpp", "bash", "markdown", "markdown_inline", "regex", "html", "css"},
			auto_install = true,
			highlight = {enable = true},
		}
		require "telescope".load_extension("agrolens")
		require "telescope".load_extension("hlargs")
	end
}
