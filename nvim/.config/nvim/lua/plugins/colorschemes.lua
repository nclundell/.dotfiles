return {
  'catppuccin/nvim',
  'olimorris/onedarkpro.nvim',
  'xiyaowong/transparent.nvim',
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      style = 'moon',
      transparent = vim.g.transparent_enabled
    },
  }
}
