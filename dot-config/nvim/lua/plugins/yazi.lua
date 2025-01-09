return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  opts = {
    yazi_floating_window_border = 'none'
  },
  keys = {
    { '<leader>-', '<CMD>Yazi<CR>', desc = 'Toggle File Browser At File' },
    { '<C-f>', '<CMD>Yazi cwd<CR>', desc = 'Toggle File Browser' }
  },
}
