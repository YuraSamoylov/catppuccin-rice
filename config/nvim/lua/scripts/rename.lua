-- Функция для получения слова под курсором
local function get_word_under_cursor()
    -- Получаем позицию курсора
    local row, col = unpack(vim.api.nvim_win_get_cursor(0))
    -- Получаем текущее слово под курсором
    local word = vim.fn.expand('<cword>')
    return word
end

local function pop_up_rename()
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
		  top = "Rename:",
		  top_align = "center",
		},
	  },
	  win_options = {
		winhighlight = "Normal:Normal,FloatBorder:Normal",
	  },
	},
	{
	  prompt = " ",
	  default_value = get_word_under_cursor(),
	  on_close = function() end,
	  on_submit = function(value)
		local word = get_word_under_cursor()
		vim.cmd(":%s/"..word.."/"..value.."/g")
		vim.cmd("nohls")
	  end,
	})

	-- mount/open the component
	input:mount()

	-- unmount component when cursor leaves buffer
	input:on(event.BufLeave, function()
	  input:unmount()
	end)
	input:on(event.InsertLeave, function ()
		input:unmount()
	end)
end

vim.api.nvim_create_user_command('Rename', pop_up_rename, {})
