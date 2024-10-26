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

        vim.g.guard_config = {
            fmt_on_save = false,
            lsp_as_default_formatter = true,
            save_on_fmt = false,
        }

        vim.keymap.set({ "n", "v" }, "<space>t", "<cmd>Guard fmt<CR>")
    end
}

return {
    guard,
}
