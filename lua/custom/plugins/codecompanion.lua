return {
  {
    'olimorris/codecompanion.nvim',
    -- TODO: Use Claude with Copilot when possible
    opts = {},
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
  },
  {
    {
      'MeanderingProgrammer/render-markdown.nvim',
      ft = { 'markdown', 'codecompanion' },
    },
  },
}
