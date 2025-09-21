return {
    setup = function()
        vim.lsp.config("rust_analyzer", {
            settings = {
                ["rust-analyzer"] = {
                    completion = {
                        autoIter = {
                            enable = false,
                        },
                    }
                }
            }
        })
        vim.lsp.enable("rust_analyzer")
    end
}
