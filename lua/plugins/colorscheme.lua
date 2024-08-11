local function config()
	require("catppuccin").setup({
		flavour = "auto",
		background = {
			light = "latte",
			dark = "mocha",
		},
		transparent_background = false,
		show_end_of_buffer = false,
		term_colors = false,
		dim_inactive = {
			enabled = false,
			shade = "dark",
			percentage = 0.15,
		},
		no_italic = false,
		no_bold = false,
		no_underline = false,
		styles = {
			comments = { "italic" },
			conditionals = { "italic" },
			loops = {},
			functions = {},
			keywords = {},
			strings = {},
			variables = {},
			numbers = {},
			booleans = {},
			properties = {},
			types = {},
			operators = {},
		},
		color_overrides = {
			all = {
				text = "#ffffff",
				base = "#222222",
				mantle = "#272A2F",
			},
		},
		custom_highlights = function(colors)
			return {
				Identifier = { fg = "#2E9EF4" },
				Comment = { fg = "#747e82" }
			}
		end,
		default_integrations = true,
		integrations = {
			cmp = true,
			gitsigns = true,
			nvimtree = true,
			treesitter = true,
			notify = false,
			telescope = true,
			mini = {
				enabled = true,
				indentscope_color = "",
			},
		},
	})
	vim.cmd.colorscheme "catppuccin"
end

return { "catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = config,
}
