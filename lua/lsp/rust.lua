return {
    setup = function(lspconfig)
        lspconfig.rust_analyzer.setup {
            settings = {
                ["rust-analyzer"] = {
                    completion = {
                        autoIter = {
                            enable = false,
                        },
                    }
                }
            }
        }
    end
}
