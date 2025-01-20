return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  dependencies = {
    'RRethy/nvim-treesitter-endwise',
  },
  event = {
    'BufReadPre',
    'BufNewFile'
  },
  main = 'nvim-treesitter.configs',
  opts = {
    auto_install = true,
    endwise = {
      enable = true,
    },
    highlight = {
      enable = true
    },
    indentation = {
      enable = true
    }
  }
}
