local keymaps = {
    { from = "<leader>f" , to = function() fzf.files()     end } ,
    { from = "ff" , to = function() fzf.files()     end } ,
    { from = "fb" , to = function() fzf.buffers()   end } ,
    { from = "fl" , to = function() fzf.blines()    end } ,
    { from = "ft" , to = function() fzf.btags()     end } ,
    { from = "fg" , to = function() fzf.git_files() end } ,
    { from = "fr" , to = function() fzf.grep()      end } ,
}
local keys = {}
for _, items in ipairs(keymaps) do
    table.insert(keys, items.from)
end
return {
    "ibhagwan/fzf-lua",
    keys = keys,
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        fzf = require("fzf-lua")
        for _, items in ipairs(keymaps) do
            vim.keymap.set("n", items.from, items.to, { noremap = true })
        end
        -- calling `setup` is optional for customization
        fzf.setup({
        })
    end
}
