-- Set Up Lazy Installer
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

--local opts = {}

-- Map End key to ESC in normal, insert, and visual modes
vim.keymap.set('n', '<End>', '<Esc>')
vim.keymap.set('i', '<End>', '<Esc>')
vim.keymap.set('v', '<End>', '<Esc>')

-- Insert new line in normal mode and remain in normal mode
vim.keymap.set('n', '<S-CR>', function()
  vim.fn.append(vim.fn.line('.'), '')
end, { noremap = true, silent = true })

require("basic-settings")
require("lazy").setup("plugins")
vim.opt.clipboard = "unnamedplus"

