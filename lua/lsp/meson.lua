return {
    setup = function()
        vim.lsp.config("mesonlsp", {})
		vim.lsp.enable("mesonlsp")
    end
}

