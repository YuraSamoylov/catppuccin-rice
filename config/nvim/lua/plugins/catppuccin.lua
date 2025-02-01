return {
	"catppuccin/nvim", name = "catppuccin", priority = 1000,
	config = function ()
	require("catppuccin").setup({
    flavour = "auto", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        dark = "mocha",
    },
    transparent_background = true, -- disables setting the background color.
    -- show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    -- term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    -- styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        -- comments = { "italic" }, -- Change the style of comments
        -- conditionals = { "italic" },
        -- loops = {"bold", "italic"},
        -- functions = { "italic" },
        -- keywords = { "bold", "italic" },
        -- strings = {"bold", "italic"},
        -- variables = {},
        -- numbers = { "bold" },
        -- booleans = { "bold" },
        -- properties = {},
        -- types = { "bold" },
        -- operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
    -- },
    color_overrides = {},
    custom_highlights = {},
    default_integrations = true,
    integrations = {
        cmp = true,
        -- gitsigns = true,
        neotree = true,
        treesitter = true,
        notify = true,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})
end
}
