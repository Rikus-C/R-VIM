vim.cmd("set expandtab") -- For indentation
vim.cmd("set tabstop=4") -- For indentation
vim.cmd("set softtabstop=4") -- For indentation
vim.cmd("set shiftwidth=4") -- For indentation
vim.cmd("set number") -- Add line numbers
vim.cmd("set clipboard=unnamedplus") -- Allow use of external clipboard
vim.cmd('hi! Cursor guifg=none guibg=#00FF00')-- Change cursor color
-- vim.api.nvim_set_keymap('n', '<C-w>', '<space>w', { noremap = true, silent = true }) -- Remap for jumping between windows

-- Project wide search
vim.keymap.set("n", "<leader>/", ":Telescope live_grep<CR>", { noremap = true, silent = true, desc = "Live Grep with Telescope" })

-- Shortcut to easy close buffer
vim.keymap.set("n", "<leader>q", ":q<CR>", { noremap = true, silent = true, desc = "Quit window" })

-- Normal mode line swapping
vim.keymap.set('n', '<A-Up>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.keymap.set('n', '<A-Down>', ':m .+1<CR>==', { noremap = true, silent = true })

-- Visual mode line swapping
vim.keymap.set('v', '<A-Up>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('v', '<A-Down>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })

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

-- Page up and down jump distance
vim.keymap.set('n', '<PageUp>', '5k', { noremap = true, silent = true })
vim.keymap.set('n', '<PageDown>', '5j', { noremap = true, silent = true })
vim.keymap.set('v', '<PageUp>', '5k', { noremap = true, silent = true })
vim.keymap.set('v', '<PageDown>', '5j', { noremap = true, silent = true })

-- Disable line wrapping (line overflow)
vim.opt.wrap = false

-- Yank to clipboard in normal mode
vim.api.nvim_set_keymap('n', 'Y', '"+y', { noremap = true, silent = true })

-- Yank to clipboard in visual mode
vim.api.nvim_set_keymap('v', 'y', '"+y', { noremap = true, silent = true })

-- Yank to clipboard in operator-pending mode (e.g., when using `y` in a motion command)
vim.api.nvim_set_keymap('o', 'y', '"+y', { noremap = true, silent = true })

-- Runs command in a horizontal split
vim.keymap.set("n", "<leader>c", function()
  vim.cmd("belowright split | terminal cd _project_ && python3 pro.py clean_project")
end, { desc = "Run Make" })

-- Runs command in a horizontal split
vim.keymap.set("n", "<leader>b", function()
  vim.cmd("belowright split | terminal cd _project_ && python3 pro.py build_project")
end, { desc = "Run Make" })

-- Runs command in a horizontal split
vim.keymap.set("n", "<leader>m", function()
  vim.cmd("belowright split | terminal cd _project_ && python3 pro.py make_project")
end, { desc = "Run Make" })

-- Runs command in a horizontal split
vim.keymap.set("n", "<leader>t", function()
  vim.cmd("belowright split | terminal cd tracelogger && python3 main.py")
end, { desc = "Run Make" })

