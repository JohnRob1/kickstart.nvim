-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'ellisonleao/gruvbox.nvim', opts = {} },
  {
    'akinsho/toggleterm.nvim',
    version = '*',

    opts = {
      open_mapping = [[<leader>tt]],
      insert_mappings = false,
      size = 50,
    },
  },
}
