-- Custom Options
vim.g.have_nerd_font = true

vim.o.relativenumber = true
vim.o.expandtab = true

return {
  -- Aesthetics
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

  -- Tools
  {
    'toppair/peek.nvim',
    event = { 'VeryLazy' },
    build = 'deno task --quiet build:fast',
    config = function()
      require('peek').setup { app = 'browser' }
      vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
      vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
    end,
  },
  {
    'nvim-flutter/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = true,
  },
  {
    'kylechui/nvim-surround',
    version = '^3.0.0', -- Use for stability; omit to use `main` branch for the latest features
    event = 'VeryLazy',
    config = function()
      require('nvim-surround').setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
}
