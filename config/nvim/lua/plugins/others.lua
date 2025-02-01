local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}

return {
	-- {
	-- 	"OXY2DEV/helpview.nvim",
	-- 	lazy = false, -- Recommended
	--
	-- 	-- In case you still want to lazy load
	-- 	-- ft = "help",
	--
	-- 	dependencies = {
	-- 		"nvim-treesitter/nvim-treesitter"
	-- 	}
	-- },
	{
   "philosofonusus/morta.nvim",
    name = 'morta',
    priority = 1000,
    opts = {},
    config = function()
    end,
  },
}
