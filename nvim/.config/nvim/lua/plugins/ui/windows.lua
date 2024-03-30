return {
  'anuvyklack/windows.nvim',
  dependencies = {
    'anuvyklack/middleclass',
    -- 'anuvyklack/animation.nvim'
  },
  event = 'BufEnter',
  opts = {
    animation = {
      enable = false
    }
  },
  keys = {
    { '<leader>eb', '<CMD>WindowsEqualize<CR>', desc = 'Equalize Buffers' },
    { '<leader>mb', '<CMD>WindowsMaximize<CR>', desc = 'Maximize Buffers' }
  }
}
