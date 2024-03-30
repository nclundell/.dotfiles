return {
  'folke/trouble.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  opts = {},
  cmd = {
    'Trouble', 'TroubleToggle'
  },
  keys = {
    { '<leader>T', '<CMD>TroubleToggle<CR>', desc = 'Toggle Trouble' }
  }
}
