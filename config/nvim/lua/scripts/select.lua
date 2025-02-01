vim.ui.select({'apple', 'banana', 'mango', 'orange'}, {
  prompt = "Title",
  telescope = require("telescope.themes").get_cursor(),
}, 
function(selected)
	print(selected)
end)
