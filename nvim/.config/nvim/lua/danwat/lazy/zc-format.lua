return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require('nvim-treesitter.configs').setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
            highlight = { enable = true },
            indent = { enable = true },
        })

        vim.api.nvim_create_autocmd("FileType", {
            pattern = "c",
            callback = function()
                vim.opt_local.indentexpr = ""
                vim.opt_local.cindent = true
                vim.opt_local.smartindent = true
            end,
        })
    end,
}
