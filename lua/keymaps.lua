vim.g.mapleader = " "

local keymaps = {
    { from = "s"         , to = "<nop>"                            },
    { from = "Q"         , to = ":q<CR>"                           },
    { from = "S"         , to = ":w<CR>"                           },
    -- 窗口分割
    { from = "sl"        , to = ":set splitright<CR>:vsplit<CR>"   },
    { from = "sh"        , to = ":set nosplitright<CR>:vsplit<CR>" },
    { from = "sj"        , to = ":set splitbelow<CR>:split<CR>"    },
    { from = "sk"        , to = ":set nosplitright<CR>:split<CR>"  },
    -- 窗口移动
    { from = "<leader>h" , to = "<C-w>h"                           },
    { from = "<leader>j" , to = "<C-w>j"                           },
    { from = "<leader>k" , to = "<C-w>k"                           },
    { from = "<leader>l" , to = "<C-w>l"                           },
    -- 窗口调整
    { from = "<up>"      , to = ":res +5<CR>"                      },
    { from = "<down>"    , to = ":res -5<CR>"                      },
    { from = "<left>"    , to = ":vertical resize-5<CR>"           },
    { from = "<right>"   , to = ":vertical resize+5<CR>"           },
    -- Buffer 移动
    { from = "tl"        , to = ":bn<CR>"                          },
    { from = "th"        , to = ":bp<CR>"                          },
    { from = "td"        , to = ":bd<CR>"                          },
}

for _, item in ipairs(keymaps) do
    vim.keymap.set("n", item.from, item.to, { noremap = true })
end

