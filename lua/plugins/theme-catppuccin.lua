return {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
        flavour = "macchiato", -- Set the default flavour (mocha, macchiato, frappe, latte)
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
    end,
}





