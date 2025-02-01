return {
	'numToStr/Comment.nvim',
	config = function ()
		local comment = require("Comment")
		comment.setup({
			toggler = {
				-- Line-comment toggle keymap
				line = 'gcc',
				line = '<leader>c',
				line = '<bs>',
				---Block-comment toggle keymap
				block = 'gbc',
				block = '<leader>m',
			},
		})
	end
}
