require('Comment').setup()
require('gitsigns').setup()
require('toggleterm').setup {
  direction = 'tab',
  shade_terminals = false
}
require('nvim-treesitter.configs').setup {
  autotag = {
    enable = true,
  },
  ensure_installed = "maintained",
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
  },
}
require('which-key').setup {}

-- Pull In Larger Configs
require('configs.cmp')
require('configs.indentline')
require('configs.lsp')
require('configs.lualine')
require('configs.pairs')
require('configs.telescope')
require('configs.treenav')
