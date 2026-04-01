return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter").install({
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
        }):wait(300000)
    end
}
