return {
    setup = function()
        vim.lsp.config("cmake", {})
        vim.lsp.enable("cmake")
    end
}
