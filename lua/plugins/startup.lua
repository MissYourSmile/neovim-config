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
                        desc = "🌑 🌒 🌓 🌔 🌕 🌖 🌗 🌘 🌑",
                        --- desc = "🕛🕧🕐🕜🕑🕝🕒🕞🕓🕟🕔🕠🕕🕡🕖🕢🕗🕣🕘🕤🕙🕥🕚🕦",
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
