return {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
        flavour = "mocha", -- Set the default flavour (mocha, macchiato, frappe, latte)
        custom_highlights = function(colors)
            return {
                -- Customize default variable color
                ["@variable"] = { fg = colors.lavender },
                -- Customize terminal autofill text color
                TermCursor = { fg = colors.peach, bg = colors.base }, -- Cursor color in terminal mode
                Terminal = { fg = colors.lavender }, -- Autofill text color
            }
        end,
    },
    config = function(_, opts)
        require("catppuccin").setup(opts)
        vim.cmd.colorscheme("catppuccin")

        -- Change background color for focused and unfocused Neo-tree windows
        vim.api.nvim_set_hl(0, 'NeoTreeNormal', { bg = '#121212' })  -- Focused state
        vim.api.nvim_set_hl(0, 'NeoTreeNormalNC', { bg = '#121212' })  -- Unfocused state

        vim.cmd([[
        highlight Normal guibg=#121212
        highlight NormalNC guibg=#121212
        highlight LineNr guifg=#5E5E5E guibg=#121212
        highlight CursorLineNr guifg=#FFD700 guibg=#121212
        ]])
end,
}





