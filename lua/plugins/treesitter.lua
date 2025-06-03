return {
{
	"nvim-treesitter/nvim-treesitter",
	config = function()
		-- Enable Treesitter and set up configurations
		require'nvim-treesitter.configs'.setup {
			ensure_installed = {"c", "cpp", "lua", "json", "vim", "javascript", "typescript", "html", "css", "python", "cmake"},
			highlight = {
			enable = true,  -- Enable syntax highlighting
			additional_vim_regex_highlighting = true, -- Use Vim regex highlighting alongside Treesitter
			},
		}
		end
    }
}
