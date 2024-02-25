return {
  {
    'aserowy/tmux.nvim',
    opts = {};
  },
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {}
  }
}
