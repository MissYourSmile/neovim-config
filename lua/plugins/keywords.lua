return {
    "Mr-LLLLL/interestingwords.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require("interestingwords").setup {
            colors = {
                "#CCE6FF",
                "#CCCCFF",
                "#E6CCFF",
                "#FFCCCC",
                "#FFE6CC",
                "#FFFFCC",
                "#E6FFCC",
                "#CCFFCC",
            },
            search_count = true,
            navigation = true,
            search_key = "<leader>s",
            cancel_search_key = "<leader><CR>",
            color_key = "<leader>m",
            cancel_color_key = "<leader>M",
        }
    end
}
