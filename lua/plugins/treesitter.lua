return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        -- Enable Treesitter and set up configurations
        require'nvim-treesitter.configs'.setup {
            ensure_installed = {"c", "cpp", "lua", "json", "vim", "javascript", "typescript", "html", "css", "python", "cmake"},
            highlight = {
                enable = true,  -- Enable syntax highlighting
                --additional_vim_regex_highlighting = true, -- Use Vim regex highlighting alongside Treesitter
            },
        }

        -- Set up clangd LSP with additional capabilities
        require'lspconfig'.clangd.setup {
            --capabilities = require'cmp_nvim_lsp'.default_capabilities(),
        }
    end
}

--return {
--    {
--        "nvim-treesitter/nvim-treesitter",
--        build = ":TSUpdate",
--        config = function()
--            require'nvim-treesitter.configs'.setup {
--                ensure_installed = { "c", "cpp", "lua", "json", "python" },
--                highlight = {
--                    enable = true,
--                    additional_vim_regex_highlighting = false,
--                },
--            }
--        end
--    },
--    {
--        "neovim/nvim-lspconfig",
--        config = function()
--            local lspconfig = require'lspconfig'
--
--            -- Set up clangd for C++
--            lspconfig.clangd.setup {
--                capabilities = require'cmp_nvim_lsp'.default_capabilities(),
--                on_attach = function(client, bufnr)
--                    local opts = { noremap = true, silent = true, buffer = bufnr }
--                    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
--                    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
--                    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
--                end,
--            }
--        end
--    },
--    {
--        "hrsh7th/nvim-cmp",
--        dependencies = {
--            "hrsh7th/cmp-nvim-lsp",
--        },
--        config = function()
--            local cmp = require'cmp'
--            cmp.setup {
--                snippet = {
--                    expand = function(args)
--                        vim.fn["vsnip#anonymous"](args.body)
--                    end,
--                },
--                mapping = {
--                    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
--                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
--                    ['<C-Space>'] = cmp.mapping.complete(),
--                    ['<C-e>'] = cmp.mapping.close(),
--                    ['<CR>'] = cmp.mapping.confirm({ select = true }),
--                },
--                sources = {
--                    { name = 'nvim_lsp' },
--                    { name = 'buffer' },
--                },
--            }
--        end
--    },
--}

