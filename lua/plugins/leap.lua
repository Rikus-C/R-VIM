return {
    {
        "ggandor/leap.nvim",
        config = function()
            require('leap').add_default_mappings()

            --vim.keymap.del('n', 'l')
            --vim.keymap.del('x', 'l')
            --vim.keymap.del('o', 'l')

            -- Map `s` and `S` in Visual mode for Leap
            vim.api.nvim_set_keymap('v', 'l', "<cmd>lua require'leap'.leap{ target_windows = { vim.fn.win_getid() } }<CR>", { noremap = true, silent = true })
            vim.api.nvim_set_keymap('v', 'L', "<cmd>lua require'leap'.leap{ backward = true, target_windows = { vim.fn.win_getid() } }<CR>", { noremap = true, silent = true })

            vim.api.nvim_set_keymap('n', 'l', "<cmd>lua require'leap'.leap{ target_windows = { vim.fn.win_getid() } }<CR>", { noremap = true, silent = true })
            vim.api.nvim_set_keymap('n', 'L', "<cmd>lua require'leap'.leap{ backward = true, target_windows = { vim.fn.win_getid() } }<CR>", { noremap = true, silent = true })
        
        end
    }
}

