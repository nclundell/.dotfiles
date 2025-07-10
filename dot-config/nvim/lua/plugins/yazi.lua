return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  opts = {
    yazi_floating_window_border = 'solid'
  },
  keys = {
    { '<leader>y', '<CMD>Yazi<CR>', desc = 'Toggle File Browser At File' },
    { '<leader>Y', '<CMD>Yazi cwd<CR>', desc = 'Toggle File Browser' }
  },
}
