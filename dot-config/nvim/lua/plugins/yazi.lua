return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  opts = {
    yazi_floating_window_border = 'rounded'
  },
  keys = {
    { '<leader>e', '<CMD>Yazi<CR>', desc = 'Toggle File Browser At File' },
    { '<leader>E', '<CMD>Yazi cwd<CR>', desc = 'Toggle File Browser' }
  },
}
