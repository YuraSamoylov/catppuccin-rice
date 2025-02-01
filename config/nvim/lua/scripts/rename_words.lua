local function split(inputstr, sep)
    if sep == nil then
        sep = "%s"  -- по умолчанию разделитель - пробел
    end
    local t = {}  -- таблица для хранения результатов
    for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
        table.insert(t, str)
    end
    return t
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
	}, {
	  prompt = " ",
	  default_value = "",
	  on_close = function() end,
	  on_submit = function(value)
		local words = split(value, ", ")
		vim.cmd(":%s/"..words[1].."/"..words[2].."/g")
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

vim.api.nvim_create_user_command('Renamewords', pop_up_rename, {})
