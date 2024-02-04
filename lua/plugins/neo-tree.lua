StartDir = vim.fn.getcwd()
DocsDir = "~/Documents/"
TokensDir = "~/Documents/git_projects/Git-Tokens/"
ProADir = "~/Documents/git_projects/IOT-Server/"
ProBDir = "~/Documents/git_projects/Digital-Twin-And-SCADA/"
ProCDir = "~/Documents/git_projects/Trend-Viewer/"

return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require('neo-tree').setup {
            filesystem = {
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = true,
                }
            }
        }
        vim.keymap.set("n", "<C-f>", ":Neotree " .. StartDir .. " filesystem reveal left<CR>") -- Neotree @ Start
        vim.keymap.set("n", "<C-g>", ":Neotree ~/.config/nvim filesystem reveal left<CR>") -- Neotree @ Config
        vim.keymap.set("n", "<C-d>", ":Neotree ~/Documents filesystem reveal left<CR>") -- Neotree @ Documents
        vim.keymap.set("n", "<C-k>", ":Neotree " .. TokensDir .. " filesystem reveal left<CR>") -- Neotree @ Git Tokens
        vim.keymap.set("n", "<C-1>", ":Neotree " .. ProADir .. " filesystem reveal left<CR>") -- Neotree @ Current Project
        vim.keymap.set("n", "<C-2>", ":Neotree " .. ProBDir .. " filesystem reveal left<CR>") -- Neotree @ Current Project
        vim.keymap.set("n", "<C-3>", ":Neotree " .. ProCDir .. " filesystem reveal left<CR>") -- Neotree @ Current Project
        vim.keymap.set("n", "<C-a>", ":Neotree close<CR>") -- Neotree close
    end
}

