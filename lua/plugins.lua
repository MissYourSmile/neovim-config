local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
    -- require("plugins.gruvbox"),
    require("plugins.catppuccin"),
    -- require("plugins.fzf"),
    require("plugins.bufferline"),
    require("plugins.statusline"),
    require("plugins.autopairs"),
    require("plugins.treesitter"),
    require("plugins.telescope"),
    require("plugins.lsp"),
    require("plugins.formatter"),
    require("plugins.copilot"),
    require("plugins.cmp"),
    require("plugins.tree"),
    require("plugins.surround"),
    require("plugins.git"),
    require("plugins.keywords"),
    require("plugins.startup"),
    require("plugins.markdown"),
}, {

})
