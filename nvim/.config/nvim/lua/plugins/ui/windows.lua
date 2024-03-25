return {
  'anuvyklack/windows.nvim',
  dependencies = {
    'anuvyklack/middleclass',
    -- 'anuvyklack/animation.nvim'
  },
  opts = {
    animation = {
      enable = false
    }
  },
  init = function()
    local map = vim.api.nvim_set_keymap

    map('n', '<leader>eb', '<CMD>WindowsEqualize<CR>', { noremap = true, desc = 'Equalize Buffers' })
    map('n', '<leader>mb', '<CMD>WindowsMaximize<CR>', { noremap = true, desc = 'Maximize Buffers' })
  end
}
