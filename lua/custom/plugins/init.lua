vim.g.have_nerd_font = true

vim.o.relativenumber = true
vim.o.expandtab = true

-- guess-indent is not loaded in main init.lua
require('guess-indent').setup {}

return {}
