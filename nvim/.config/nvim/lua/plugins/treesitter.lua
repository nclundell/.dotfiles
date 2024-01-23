return {
  'nvim-treesitter/nvim-treesitter',
  'nvim-treesitter/nvim-treesitter-textobjects',
  'windwp/nvim-ts-autotag',
  'RRethy/nvim-treesitter-endwise',
  {
    'nvim-treesitter/nvim-treesitter-context',
    opts = {
      patterns = {
        ruby = {
          'assignment',
          'block',
          'do_block',
        }
      }
    }
  }
}
