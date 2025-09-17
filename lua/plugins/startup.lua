return {
    "glepnir/dashboard-nvim",
    event = "VimEnter",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        require("dashboard").setup({
            theme = 'hyper',
            config = {
                week_header = {
                    enable = true,
                    concat = "",
                    append = {},
                },
                shortcut = {
                    {
                        desc = "\u{e0c2}  \u{e0cf}  \u{e0cf}  \u{e0cf}  \u{e0cf}  \u{e0cf}  \u{e0cf}  \u{e0cf}  \u{e0cf}  \u{e0c0}",
                        group = "DashboardShortCut"
                    },
                },
                footer = {},
                project = {},
                mru = {},
            },
        })
    end
}
