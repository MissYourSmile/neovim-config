return {
    setup = function()
        vim.lsp.config("pyright", {})
        vim.lsp.enable("pyright")
    end
}
