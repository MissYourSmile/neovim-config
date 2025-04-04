local preview = {
    "iamcco/markdown-preview.nvim",
    cmd = {
        "MarkdownPreviewToggle",
        "MarkdownPreview",
        "MarkdownPreviewStop"
    },
    build = function()
        vim.cmd [[Lazy load markdown-preview.nvim]]
        vim.fn["mkdp#util#install"]()
    end,
    ft = {
        "markdown",
        "codecompanion"
    },
    config = function()
        vim.g.mkdp_port = '8080'
        vim.g.mkdp_open_to_the_world = 1
        vim.g.mkdp_echo_preview_url = 1
    end
}

local render = {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter"
    },
    ft = {
        "markdown",
        "codecompanion"
    },
    opts = {},
    config = function()
        require('render-markdown').setup({
            completions = { lsp = { enabled = true } },
        })
    end
}

return {
    preview,
    render,
}
