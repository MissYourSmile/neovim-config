local guard = {
    "nvimdev/guard.nvim",
    event = { "BufReadPre", "BufNewFile" },
    -- Builtin configuration, optional
    dependencies = {
        "nvimdev/guard-collection",
    },
    config = function()
        local ft = require("guard.filetype")

        ft("python"):fmt("black")

        require("guard").setup({
            fmt_on_save = false,
            lsp_as_default_formatter = true,
        })

        vim.keymap.set({ "n", "v" }, "<space>t", "<cmd>GuardFmt<CR>")
    end
}

return {
    guard,
}
