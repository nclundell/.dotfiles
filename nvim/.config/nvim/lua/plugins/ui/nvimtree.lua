return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  opts = {
    diagnostics = {
      enable = true,
      show_on_dirs = true
    },
    renderer = {
      indent_markers = {
        enable = true
      }
    },
    update_focused_file = {
      enable = true
    },
    view = {
      adaptive_size = true
    }
  },
  keys = {
    { '<leader>F', '<CMD>NvimTreeToggle<CR>', desc = 'Toggle File Tree' }
  }
}
