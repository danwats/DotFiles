return {
    'vimwiki/vimwiki',
    config = function()
        vim.g.vimwiki_list = {
            {
                syntax = "markdown",
                ext = ".md",
                path = vim.fn.expand("~/docs/personalwiki"),
            },
        }
        -- Force markdown filetype AFTER vimwiki sets it
        vim.api.nvim_create_autocmd("BufWinEnter", {
            pattern = vim.fn.expand("~/docs/personalwiki") .. "/**/*.md",
            callback = function()
                vim.schedule(function()
                    vim.bo.filetype = "markdown"
                end)
            end,
        })
    end,
}
