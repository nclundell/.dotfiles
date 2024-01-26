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
    view = {
      adaptive_size = true
    }
  },
  init = function()
    vim.keymap.set(
      'n',
      '<c-f>',
      function()
        require('nvim-tree.api').tree.toggle()
      end,
      {
        desc = 'Toggle File Tree'
      }
    )
  end
}
