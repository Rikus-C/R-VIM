return {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
        -- Optionally configure and load the colorscheme
        -- directly inside the plugin declaration.
        vim.g.gruvbox_material_enable_italic = false 
        vim.cmd.colorscheme('gruvbox-material')
        
        vim.cmd([[
            highlight Normal guibg=#121212
            highlight NormalNC guibg=#121212
            highlight LineNr guifg=#5E5E5E guibg=#121212
            highlight CursorLineNr guifg=#FFD700 guibg=#121212
        ]])
    end
}
