return {
    setup = function()
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities.textDocument.completion.completionItem.snippetSupport = true
        vim.lsp.config("cssls", { capabilities = capabilities, })
        vim.lsp.enable("cssls")
    end
}
