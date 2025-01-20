return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  keys = {
    { '<leader>tt',      function() Snacks.terminal() end, desc = 'Toggle Terminal' },
    { '<leader>tt',      function() Snacks.terminal() end, mode = 't', desc = 'Toggle Terminal' },
    { '<leader>tT',      function() Snacks.terminal('$SHELL') end, desc = 'Toggle Floating Terminal' },
    { '<leader>tT',      function() Snacks.terminal('$SHELL') end, mode = 't', desc = 'Toggle Floating Terminal' },
  }
}
