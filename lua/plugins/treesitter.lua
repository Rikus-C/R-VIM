return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        -- Enable Treesitter and set up configurations
        require'nvim-treesitter.configs'.setup {
            ensure_installed = {"c", "cpp", "lua", "json", "vim", "javascript", "python"},
            highlight = { enable = true }
        }
    end
}
