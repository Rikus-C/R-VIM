vim.cmd("set expandtab") -- For indentation
vim.cmd("set tabstop=4") -- For indentation
vim.cmd("set softtabstop=4") -- For indentation
vim.cmd("set shiftwidth=4") -- For indentation
vim.cmd("set number") -- Add line numbers
vim.cmd("set clipboard=unnamedplus") -- Allow use of external clipboard
vim.cmd('hi! Cursor guifg=none guibg=#00FF00')-- Change cursor color
-- vim.api.nvim_set_keymap('n', '<C-w>', '<space>w', { noremap = true, silent = true }) -- Remap for jumping between windows

-- Remap arrow keys for movement in normal mode
vim.api.nvim_set_keymap('n', '<Up>', '<Cmd>normal! k<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>', '<Cmd>normal! j<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Left>', '<Cmd>normal! h<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', '<Cmd>normal! l<CR>', { noremap = true, silent = true })

-- Remap arrow keys for movement in visual mode
vim.api.nvim_set_keymap('v', '<Up>', '<Cmd>normal! k<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Down>', '<Cmd>normal! j<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Left>', '<Cmd>normal! h<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Right>', '<Cmd>normal! l<CR>', { noremap = true, silent = true })


-- Disable line wrapping (line overflow)
-- vim.opt.wrap = false



