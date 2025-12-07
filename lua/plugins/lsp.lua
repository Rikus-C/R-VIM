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

            ---------------------------------------------------------------------
            -- LSP SERVERS
            ---------------------------------------------------------------------
            lspconfig.lua_ls.setup({})
            lspconfig.ts_ls.setup({})
            lspconfig.pyright.setup({})
            lspconfig.cmake.setup({})

            lspconfig.clangd.setup({
                cmd = {
                    "clangd",
                    "--background-index",
                    "--clang-tidy",
                    "--completion-style=detailed",
                    "--header-insertion=never",
                },
            })

            ---------------------------------------------------------------------
            -- DOCUMENT HIGHLIGHT BEHAVIOR (your request)
            ---------------------------------------------------------------------
            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(args)
                    local client = vim.lsp.get_client_by_id(args.data.client_id)
                    local buffer = args.buf

                    -- Only enable if server supports it
                    if client.server_capabilities.documentHighlightProvider then
                        -- Highlight occurrences under cursor
                        vim.api.nvim_create_autocmd(
                            { "CursorHold", "CursorHoldI" },
                            {
                                buffer = buffer,
                                callback = vim.lsp.buf.document_highlight,
                            }
                        )

                        -- Clear highlight when cursor moves
                        vim.api.nvim_create_autocmd(
                            { "CursorMoved", "CursorMovedI" },
                            {
                                buffer = buffer,
                                callback = vim.lsp.buf.clear_references,
                            }
                        )
                    end
                end,
            })

            ---------------------------------------------------------------------
            -- KEYMAPS
            ---------------------------------------------------------------------
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set({"n", "v"}, "<C-q>", vim.lsp.buf.code_action, {})

            -- Jump back/forward
            vim.keymap.set("n", "<A-,>", "<C-o>", { desc = "Jump back" })
            vim.keymap.set("n", "<A-.>", "<C-i>", { desc = "Jump forward" })

            ---------------------------------------------------------------------
            -- DIAGNOSTICS
            ---------------------------------------------------------------------
            vim.diagnostic.config({
                virtual_text = true,
                signs = true,
                underline = true,
                update_in_insert = true,
            })
        end
    },
}
