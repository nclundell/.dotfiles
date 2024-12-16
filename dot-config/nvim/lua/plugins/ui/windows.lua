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
    { '<leader>=', '<CMD>WindowsEqualize<CR>', desc = 'Equalize Buffers' },
    { '<leader>+', '<CMD>WindowsMaximize<CR>', desc = 'Maximize Buffers' }
  }
}
