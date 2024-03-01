StartDir = vim.fn.getcwd()
DocsDir = "~/Documents/"
TokensDir = "~/Documents/git_projects/Git-Tokens/"
ProADir = "~/Documents/MissionLink/mls-v0.0.1/"
ProBDir = "~/Documents/git_projects/Digital-Twin-And-SCADA/"
ProCDir = "~/Documents/git_projects/Trend-Viewer/"
ProDDir = "~/Documents/git_projects/Data-Logger/"
ProEDir = "~/Documents/git_projects/LP100-Remote-Control/"
ProFDir = "~/Documents/git_projects/LiDAR-SBS/"
ProGDir = "~/Documents/MissionLink/iom-t1-v0.0.1/"

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
        vim.keymap.set("n", "<F1>", ":Neotree " .. ProADir .. " filesystem reveal left<CR>") -- Neotree @ Current Project
        vim.keymap.set("n", "<F2>", ":Neotree " .. ProBDir .. " filesystem reveal left<CR>") -- Neotree @ Current Project
        vim.keymap.set("n", "<F3>", ":Neotree " .. ProCDir .. " filesystem reveal left<CR>") -- Neotree @ Current Project
        vim.keymap.set("n", "<F4>", ":Neotree " .. ProDDir .. " filesystem reveal left<CR>") -- Neotree @ Current Project
        vim.keymap.set("n", "<F5>", ":Neotree " .. ProEDir .. " filesystem reveal left<CR>") -- Neotree @ Current Project
        vim.keymap.set("n", "<F6>", ":Neotree " .. ProFDir .. " filesystem reveal left<CR>") -- Neotree @ Current Project
        vim.keymap.set("n", "<F7>", ":Neotree " .. ProGDir .. " filesystem reveal left<CR>") -- Neotree @ Current Project
        vim.keymap.set("n", "<C-a>", ":Neotree close<CR>") -- Neotree close
    end
}

