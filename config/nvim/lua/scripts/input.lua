local function pop_up_input()
	local Input = require("nui.input")
	local event = require("nui.utils.autocmd").event

	local input = Input({
	  position = "50%",
	  size = {
		width = 20,
	  },
	  border = {
		style = "single",
		text = {
		  top = "",
		  top_align = "center",
		},
	  },
	  win_options = {
		winhighlight = "Normal:Normal,FloatBorder:Normal",
	  },
	}, {
	  prompt = " ",
	  default_value = "",
	  on_close = function() end,
	  on_submit = function(value)
		print("" .. value)
	  end,
	})

	-- mount/open the component
	input:mount()

	-- unmount component when cursor leaves buffer
	input:on(event.BufLeave, function()
	  input:unmount()
	end)
end

vim.api.nvim_create_user_command('Input', pop_up_input, {})
