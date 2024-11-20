return {
    {
        'iamcco/markdown-preview.nvim',
        build = function()
            vim.fn['mkdp#util#install']()  -- This installs the necessary components
        end,
        config = function()
            -- Use Firefox as the browser for Markdown preview
            vim.g.mkdp_browser = 'firefox'
        end,
        ft = { 'markdown' },  -- Load the plugin only for Markdown files
        cmd = { 'MarkdownPreview', 'MarkdownPreviewStop', 'MarkdownPreviewToggle' },
    }
}
