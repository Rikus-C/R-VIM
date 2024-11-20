return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {
        flavour = "mocha",
		term_colors = true,
		transparent_background = false, -- Ensure this is set to false
		styles = {
			comments = {},
			conditionals = {},
			loops = {},
			functions = {},
			keywords = {},
			strings = {},
			variables = {},
			numbers = {},
			booleans = {},
			properties = {},
			types = {},
		},
		color_overrides = {
			mocha = {
				base = "#000000", -- Set the base background color to black
				mantle = "#000000", -- Set the mantle color to black
				crust = "#000000", -- Set the crust color to black
			},
		},
		integrations = {
			telescope = {
				enabled = true,
				style = "nvchad",
			},
			dropbar = {
				enabled = true,
				color_mode = true,
			},
		},
	},
	config = function()
		--vim.o.background = "dark" -- Set the background mode to dark
        --vim.cmd.colorscheme("catppuccin")
        --vim.cmd([[highlight Normal guibg=#000000]]) -- Set the background color to black
	end
}
