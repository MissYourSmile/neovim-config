return {
    "Mr-LLLLL/interestingwords.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require("interestingwords").setup {
            colors = { '#aeee00', '#ff0000', '#0000ff', '#b88823', '#ffa724', '#ff2c4b' },
            search_count = true,
            navigation = true,
            search_key = "<leader>s",
            cancel_search_key = "<leader><CR>",
            color_key = "<leader>m",
            cancel_color_key = "<leader>M",
        }
    end
}
