return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        -- Enable Treesitter and set up configurations
        require'nvim-treesitter.configs'.setup {
            ensure_installed = {"c", "cpp", "lua", "json", "vim", "javascript", "typescript", "html", "css", "python"},
            highlight = { enable = true }
        }
    end
}
