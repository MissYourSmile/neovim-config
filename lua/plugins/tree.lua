return {
    "nvim-tree/nvim-tree.lua",
    keys = {
        "<leader>nt"
    },
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function ()
        require("nvim-tree").setup({})
        vim.keymap.set("n", "<leader>nt", "<cmd>NvimTreeToggle<CR>", { noremap = true })
    end
}
