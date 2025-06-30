return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    styles = {
      terminal = {
        border = 'rounded'
      }
    }
  },
  keys = {
    { '<leader>tt',      function() Snacks.terminal() end, desc = 'Terminal' },
    { '<leader>tt',      function() Snacks.terminal() end, mode = 't', desc = 'Terminal' },
    { '<leader>tT',      function() Snacks.terminal('$SHELL') end, desc = 'Floating Terminal' },
    { '<leader>tT',      function() Snacks.terminal('$SHELL') end, mode = 't', desc = 'Floating Terminal' },
  }
}
