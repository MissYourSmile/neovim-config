return {
    setup = function()
        vim.lsp.config("marksman", {})
        vim.lsp.enable("marksman")
    end
}
