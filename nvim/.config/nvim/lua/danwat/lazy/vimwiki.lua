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
        vim.g.vimwiki_global_ext = 0
    end,
}
