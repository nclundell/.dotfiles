require('nvim-treesitter.configs').setup {
  autotag = {
    enable = true,
  },
  endwise = {
    enable = true,
  },
  ensure_installed = "all",
  highlight = {
    enable = true
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    }
  },
  indentation = {
    enable = true
  }
}

require'treesitter-context'.setup {
  patterns = {
    ruby = {
      'assignment',
      'block',
      'do_block',
    },
  },
}
