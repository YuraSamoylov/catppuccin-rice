local function pop_help()
	local Menu = require("nui.menu")
	local event = require("nui.utils.autocmd").event

	   local menu = Menu({
     position = "50%",
     size = {
       width = 20,
       height = 6,
     },
     border = {
       style = "single",
       text = {
         top = " Help: ",
         top_align = "center",
       },
     },
     win_options = {
       winhighlight = "Normal:Normal,FloatBorder:Normal",
     },
   }, {  -- Здесь должен быть второй аргумент
     lines = {
       Menu.item("Editor tutor"),
       Menu.item("Editor help"),
       Menu.item("Editor mappings"),
       Menu.item("Editor plugins"),
       Menu.item("Editor usage"),
       Menu.item("Editor config help"),
     },
     max_width = 20,
     keymap = {
       focus_next = { "j", "<Down>", "<Tab>" },
       focus_prev = { "k", "<Up>", "<S-Tab>" },
       close = { "<Esc>", "<C-c>", "h" },
       submit = { "<CR>", "<Space>", "l" },
     },
     on_close = function() end,
     on_submit = function(item)
       local help_text = item.text
		 
       if help_text == "Editor mappings" then
         vim.cmd("tabnew ~/.config/nvim/helps/mappings.txt")
       elseif help_text == "Editor tutor" then
         vim.cmd("Tutor")
       elseif help_text == "Editor help" then
         vim.cmd("help")
	   elseif help_text == "Editor plugins" then
		   vim.cmd("Lazy show")
	   elseif help_text == "Editor config help" then
         vim.cmd("tabnew ~/.config/nvim/helps/config_help.txt")
       end
     end,
   })
   
	-- mount the component
	menu:mount()

end

vim.api.nvim_create_user_command('Helpmenu', pop_help, {})
