return {
  {
    'aserowy/tmux.nvim',
    opts = {};
  },
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    opts = {},
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    config = function()
      -- local wk = require('which-key')
      --
      -- wk.register({
      --   ['<ESC>'] = { '<CMD> nohl <CR>', 'Disable search highlight' },
      --   [';'] = { '@=(foldlevel(".")?"za": "<Space>") <CR>', 'Toggle fold' },
      -- }, {
      --   mode = 'n'
      -- })
      --
      -- wk.register({
      --   ['>'] = { '>gv', 'Indent selected text' },
      --   ['<'] = { '<gv', 'Unindent selected text' },
      -- }, {
      --   mode = 'x'
      -- })
      --
      -- wk.register({
      --   c = { '<CMD> bd <CR>', 'Close buffer' },
      --   C = { '<CMD> bd! <CR>', 'Close buffer without saving' },
      --   q = { '<CMD> q <CR>', 'Quit' },
      --   Q = { '<CMD> q! <CR>', 'Quit without saving' },
      --   w = { '<CMD> w <CR>', 'Save file' }
      -- }, {
      --   prefix = '<leader>',
      -- })
    end,
  }
}
