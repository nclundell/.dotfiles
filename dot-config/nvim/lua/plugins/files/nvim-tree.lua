return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    disable_netrw = true,
    renderer = {
      indent_markers = {
        enable = true
      },
      icons = {
        show = {
          folder_arrow = false
        }
      }
    },
    update_focused_file = {
      enable = true,
      update_root = true
    }
  },
  keys = {
    { '<C-f>', '<CMD>NvimTreeToggle<CR>', desc = 'Toggle File Tree' }
  }
}
