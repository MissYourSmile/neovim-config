return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.2",
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    config = function()
        local builtin = require("telescope.builtin")
        local keymaps = {
            { from = "<leader>f",  to = ":Telescope find_files                <CR>" },
            { from = "ff",         to = ":Telescope lsp_document_symbols      <CR>" },
            { from = "fb",         to = ":Telescope buffers                   <CR>" },
            { from = "fl",         to = ":Telescope current_buffer_fuzzy_find <CR>" },
            { from = "ft",         to = ":Telescope current_buffer_tags       <CR>" },
            { from = "fr",         to = ":Telescope live_grep                 <CR>" },
            { from = "<leader>;",  to = ":Telescope commands                  <CR>" },
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
