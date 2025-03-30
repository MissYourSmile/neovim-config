local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end
local nvim_cmp = {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-calc",
        {
            "onsails/lspkind.nvim",
            --lazy = false,
            config = function()
                require("lspkind").init()
            end
        },
        "saadparwaiz1/cmp_luasnip",
    },
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")
        cmp.setup {
            preselect = cmp.PreselectMode.None,
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
            }, {
                { name = 'buffer' },
                { name = 'path' },
                { name = 'calc' },
            }),
            mapping = {
                ["<c-n>"] = cmp.mapping(
                    function(_)
                        luasnip.jump(1)
                    end,
                    { "i", "s", }
                ),
                ["<c-p>"] = cmp.mapping(
                    function(_)
                        luasnip.jump(-1)
                    end,
                    { "i", "s", }
                ),
                ['<CR>'] = cmp.mapping({
                    i = function(fallback)
                        if cmp.visible() and cmp.get_active_entry() then
                            cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
                        else
                            fallback()
                        end
                    end
                }),
                ["<Tab>"] = cmp.mapping({
                    i = function(fallback)
                        if cmp.visible() then
                            cmp.select_next_item({})
                        elseif has_words_before() then
                            cmp.complete()
                        else
                            fallback()
                        end
                    end,
                }),
                ["<S-Tab>"] = cmp.mapping({
                    i = function(_)
                        if cmp.visible() then
                            cmp.select_prev_item({})
                        end
                    end,
                }),
            },
        }
    end
}

local snips = {
    "L3MON4D3/LuaSnip",
    tag = "v2.3.0",
    build = "make install_jsregexp",
    event = "InsertEnter",
    dependencies = {
        "rafamadriz/friendly-snippets"
    },
    config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
    end
}

return {
    snips,
    nvim_cmp
}
