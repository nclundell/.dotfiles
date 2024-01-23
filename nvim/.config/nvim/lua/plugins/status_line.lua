return {
  'nvim-lualine/lualine.nvim',
  opts = {
    extensions = {
      'nvim-tree',
      'toggleterm'
    },
    options = {
      -- section_separators = { left = '', right = '' },
      globalstatus = true,
      path = 1,
      refresh = {
        winbar = 100
      }
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch', 'diff', 'diagnostics'},
      lualine_c = {'filename'},
      lualine_x = {},
      lualine_y = {'encoding', 'fileformat', 'filetype'},
      lualine_z = {'location'}
    }
  }
}
