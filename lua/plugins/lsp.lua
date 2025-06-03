return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {"lua_ls", "clangd", "pyright", "ts_ls"}
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.tsserver.setup({})
            lspconfig.clangd.setup({})
            lspconfig.cmake.setup({})
            lspconfig.pyre.setup({})
            -- Set some LSP keymaps
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set({"n", "v"}, "<C-q>", vim.lsp.buf.code_action, {})
            
            -- Disable virtual text, signs, underlines, and updates in insert mode
            vim.diagnostic.config({
                virtual_text = false,  -- Disable error squiggles
                signs = false,         -- Disable signs in the gutter
                underline = false,     -- Disable underlining
                update_in_insert = false, -- Disable updates in insert mode
            })
        end
    },
--    {
--       "williamboman/mason-lspconfig.nvim",
--       config = function()
--           require("mason-lspconfig").setup({
--               ensure_installed = { "ts_ls" }  -- Replace "tsserver" with "ts_ls"
--           })
--       end
--   }
}
