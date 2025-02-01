local function nmap(map, cmd, description)
	description = description or ""
	vim.keymap.set('n', map, cmd, { remap = true, silent = true, desc = description })
end

local function imap(map, cmd, description)
	description = description or ""
	vim.keymap.set('i', map, cmd, { remap = true, silent = true, desc = description })
end

local function vmap(map, cmd, description)
	description = description or ""
	vim.keymap.set('v', map, cmd, { remap = true, silent = true, desc = description })
end

local function xmap(map, cmd, description)
	description = description or ""
	vim.keymap.set('x', map, cmd, { remap = true, silent = true, desc = description })
end

local function tmap(map, cmd, description)
	description = description or ""
	vim.keymap.set('t', map, cmd, { remap = true, silent = true, desc = description })
end

local function input(submit, title, _prompt, default_text)
	title = title or ""
	_prompt = _prompt or " "
	default_text = default_text or ""

	local function pop_up_input()
		local Input = require("nui.input")
		local event = require("nui.utils.autocmd").event

		local ui_input = Input({
		  position = "50%",
		  size = {
			width = 20,
		  },
		  border = {
			style = "single",
			text = {
			  top = title,
			  top_align = "center",
			},
		  },
		  win_options = {
			winhighlight = "Normal:Normal,FloatBorder:Normal",
		  },
		}, {
		  prompt = _prompt,
		  default_value = default_text,
		  on_close = function() end,
		  on_submit = function(value)
			  submit(value)
		  end,
		})

		-- mount/open the component
		ui_input:mount()

		-- unmount component when cursor leaves buffer
		ui_input:on(event.BufLeave, function()
			ui_input:unmount()
		end)
	end

end

local function create_command(name, func)
	vim.api.nvim_create_user_command(name, func, {})
end
