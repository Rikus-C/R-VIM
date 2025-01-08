return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set('n', '<C-p>', require('telescope.builtin').buffers, { noremap = true, silent = true })
            --vim.keymap.set("n", "<C-p>", builtin.find_files, {}) -- Fuzzy Finder
        end
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            -- This is your opts table
            --require("telescope").setup({
            --    extensions = {
            --        ["ui-select"] = {
            --            require("telescope.themes").get_dropdown {
            --                -- even more opts
            --            }
            --        }
            --    }
            --})
            require('telescope').setup({
                pickers = {
                    buffers = {
                        sort_lastused = true,
                        ignore_current_buffer = true,
                        only_cwd = false, -- Set to true if you only want buffers from the current directory
                    },
                },
            })

            require("telescope").load_extension("ui-select")
        end
    }
}
