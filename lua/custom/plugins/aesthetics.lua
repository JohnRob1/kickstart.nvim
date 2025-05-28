return {
  {
    'Darazaki/indent-o-matic',
  },
  {
    'nvim-tree/nvim-web-devicons',
    enabled = true,
  },
  {
    'ellisonleao/gruvbox.nvim',
    priority = 999,
    config = function()
      vim.cmd.colorscheme 'gruvbox'
    end,
  },
  {
    'xiyaowong/transparent.nvim',
    config = function()
      require('transparent').clear_prefix 'NeoTree'
      require('transparent').setup {
        exclude_groups = {
          'StatusLine',
          'StatusLineNC',
        },
      }
    end,
  },
}
