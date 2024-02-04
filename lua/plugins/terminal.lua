return {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
        size = 20,
        open_mapping = [[<c-\>]],
        auto_scroll = true,
        autochdir = true,
        hide_numbers = true,
        shade_filetype = {},
        shade_terminals = true,
        shade_factor = 2,
        start_in_insert = true,
        insert_mapping = true,
        persist_size = true,
        direction = "float",
        close_on_exit = true,
        shell = vim.o.shell,
        float_opts = {
            border = "curved",
            winblend = 0,
            highlights = {
                border = "Normal",
                background = "Normal"
            }
        }
    }
}
