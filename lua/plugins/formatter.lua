local guard = {
    "nvimdev/guard.nvim",
    event = { "BufReadPre", "BufNewFile" },
    -- Builtin configuration, optional
    dependencies = {
        "nvimdev/guard-collection",
    },
    config = function()
        vim.g.guard_config = {
            fmt_on_save = false,
            lsp_as_default_formatter = true,
            save_on_fmt = false,
        }

        local ft = require("guard.filetype")

        if vim.fn.executable("black") == 1 then
            ft("python"):fmt("black")
        end
        if vim.fn.executable("rustfmt") == 1 then
            ft("rust"):fmt("rustfmt")
        end

        vim.keymap.set({ "n", "v" }, "<space>t", "<cmd>Guard fmt<CR>")
    end
}

return {
    guard,
}
