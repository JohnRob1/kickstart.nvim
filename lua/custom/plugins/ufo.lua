vim.o.foldlevel = 99
vim.o.foldenable = true
vim.o.foldlevelstart = 3
vim.o.foldcolumn = 'auto:9'
vim.o.foldmethod = 'manual'
vim.o.fillchars = 'fold: ,foldopen:,foldsep:│,foldclose:'

vim.keymap.set('n', '<leader>K', function()
  require('ufo').peekFoldedLinesUnderCursor()
end, { desc = 'nvim-ufo: Peek Folded Lines' })

vim.api.nvim_create_autocmd('ColorScheme', {
  pattern = '*',
  callback = function()
    vim.api.nvim_set_hl(0, 'FoldColumn', { bg = 'none', fg = '#888888' })
  end,
  desc = 'Set transparent FoldColumn and Folded background after colorscheme',
})

return {
  'kevinhwang91/nvim-ufo',
  dependencies = {
    'kevinhwang91/promise-async',
  },
  opts = {},
}
