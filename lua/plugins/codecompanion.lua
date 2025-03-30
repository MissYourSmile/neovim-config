return {
    "olimorris/codecompanion.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
    },
    config = function()
        require("codecompanion").setup({
            adapters = {
                deepseek = function()
                    return require("codecompanion.adapters").extend("deepseek", {
                        env = {
                            api_key = function()
                                return os.getenv("DEEPSEEK_API_KEY")
                            end,
                        },
                        schema = {
                            model = {
                                default = "deepseek-chat",
                            },
                        },
                    })
                end,
            },
            strategies = {
                chat = { adapter = "deepseek", },
                inline = { adapter = "deepseek" },
                agent = { adapter = "deepseek" },
            },
            opts = {
                language = "Chinese",
            }
        })
    end
}
