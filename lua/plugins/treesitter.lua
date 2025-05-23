return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            modules = {},
            sync_install = false,
            auto_install = true,
            ignore_install = {},
            ensure_installed = {
                "c",
                "cpp",
                "lua",
                "query",
                "vim",
                "bash",
                "python",
                "json",
                "make",
                "query",
                "markdown",
                "markdown_inline",
                "cmake",
                "html",
                "css",
                "javascript",
                "rust",
                "yaml",
            },
            highlight = {
                enable = true,
                disable = {}, -- list of language that will be disabled
            },
            indent = {
                enable = false
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection    = "<c-n>",
                    node_incremental  = "<c-n>",
                    node_decremental  = "<c-p>",
                    scope_incremental = "<c-l>",
                },
            }
        })
    end
}
