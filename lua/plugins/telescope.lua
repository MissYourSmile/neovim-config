return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.2",
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    config = function()
        local builtin = require("telescope.builtin")
        local keymaps = {
            { from = "<leader>f",  to = function () builtin.find_files()                 end },
            { from = "ff",         to = function () builtin.lsp_document_symbols()       end },
            { from = "fb",         to = function () builtin.buffers()                    end },
            { from = "fl",         to = function () builtin.current_buffer_fuzzy_find()  end },
            { from = "ft",         to = function () builtin.current_buffer_tags()        end },
            { from = "fr",         to = function () builtin.live_grep()                  end },
            { from = "<leader>;",  to = function () builtin.commands()                   end },
        }
        for _, items in ipairs(keymaps) do
            vim.keymap.set("n", items.from, items.to, { noremap = true })
        end
        local ts = require("telescope")
        ts.setup {
            defaults = {
                mappings = {
                    i = {
                        ["<C-h>"] = "which_key",
                        ["<C-k>"] = "move_selection_previous",
                        ["<C-j>"] = "move_selection_next",
                        ["<C-b>"] = "preview_scrolling_up",
                        ["<C-f>"] = "preview_scrolling_down",
                        ["<esc>"] = "close",
                    }
                },
                color_devicons = true,
                prompt_prefix = "🔍 ",
                selection_caret = " ",
            }
        }
    end
}
