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
    vim.keymap.set(
      'n',
      '<leader>we',
      function() require('windows.commands').equalize() end,
      { desc = 'Equalize Windows' }
    )

    vim.keymap.set(
      'n',
      '<leader>wm',
      function() require('windows.commands').maximize() end,
      { desc = 'Maximize Windows' }
    )
  end
}
