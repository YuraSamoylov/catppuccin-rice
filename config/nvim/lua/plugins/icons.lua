return {
	'yamatsum/nvim-nonicons',
	requires = {'kyazdani42/nvim-web-devicons'},
	{
		"rachartier/tiny-devicons-auto-colors.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons"
		},
		event = "VeryLazy",
		config = function()
			require('tiny-devicons-auto-colors').setup()
		end
	}
}
