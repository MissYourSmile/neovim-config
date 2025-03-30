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
    },
    config = function()
        vim.g.mkdp_port = '8080'
        vim.g.mkdp_open_to_the_world = 1
        vim.g.mkdp_echo_preview_url = 1
    end
}

return {
    preview,
}
