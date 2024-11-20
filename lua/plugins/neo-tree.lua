StartDir = vim.fn.getcwd()
MainName = "Gadgetron"
DocsDir = "~/Documents/"
TokensDir = "~/Documents/" .. MainName .. "/Tokens/"

ProADir = "" 
ProBDir = "~/Documents/" .. MainName .. "/"
ProCDir = "~/Documents/" .. MainName .. "/Clients/"
ProDDir = "~/Documents/" .. MainName .. "/Internal/"
ProEDir = "~/Documents/" .. MainName .. "/Internal/Technical/"
ProFDir = "~/Documents/" .. MainName .. "/Internal/Technical/Software/"
ProGDir = "~/Documents/" .. MainName .. "/Internal/Technical/Software/Embedded/"
ProHDir = "~/Documents/" .. MainName .. "/Internal/Technical/Software/Embedded/stm32_f411re_template/"
ProIDir = "~/Documents/" .. MainName .. "/Internal/Technical/Software/Embedded/Gadgetron_Controller/"

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
        vim.keymap.set("n", "<F8>", ":Neotree " .. ProHDir .. " filesystem reveal left<CR>") -- Neotree @ Current Project
        vim.keymap.set("n", "<F9>", ":Neotree " .. ProIDir .. " filesystem reveal left<CR>") -- Neotree @ Current Project
        vim.keymap.set("n", "<C-a>", ":Neotree close<CR>") -- Neotree close
    end
}

