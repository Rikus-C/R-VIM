--return {
--    "folke/tokyonight.nvim",
--    lazy = false,
--    priority = 1000,
--    opts = {},
--    config = function()
--        vim.cmd.colorscheme("tokyonight-storm")
--        --vim.cmd[[colorscheme tokyonight-night]]
--        --vim.cmd[[colorscheme tokyonight-storm]]
--        --vim.cmd[[colorscheme tokyonight-day]]
--        --vim.cmd[[colorscheme tokyonight-moon]] 
--    end
--}


return {
--    "folke/tokyonight.nvim",
--    lazy = false,
--    priority = 1000,
--    opts = {
--        style = "storm",  -- Use the storm variant of the theme
--        custom_highlights = function(colors)
--            return {
--                -- Customize default variable color
--                ["@variable"] = { fg = colors.blue }, 
--            }
--        end,
--    },
--    config = function(_, opts)
--        require("tokyonight").setup(opts)  -- Correct theme setup function
--        vim.cmd.colorscheme("tokyonight")  -- Apply the theme
--    end,
}

