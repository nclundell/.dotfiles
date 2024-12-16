return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  event = {
    'BufReadPre',
    'BufNewFile'
  },
  main = 'nvim-treesitter.configs',
  opts = {
    auto_install = true,
    highlight = {
      enable = true
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = '<C-Space>',
        node_incremental = '<C-Space>',
        scope_incremental = false,
        node_decremental = '<BS>',
      }
    },
    indentation = {
      enable = true
    }
  }
}
