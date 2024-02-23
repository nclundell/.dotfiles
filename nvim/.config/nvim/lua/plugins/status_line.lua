return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'AndreM222/copilot-lualine',
  },
  opts = {
    extensions = {
      'lazy',
      'mason',
      'nvim-tree',
      'overseer',
      'toggleterm'
    },
    options = {
      -- section_separators = { left = '', right = '' },
      section_separators = { left = '', right = '' },
      component_separators = { left = '', right = '' },
      globalstatus = true,
      path = 1,
      refresh = {
        winbar = 100
      }
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = {},
      lualine_c = { 'branch', 'diff', 'diagnostics', 'filename' },
      lualine_x = { 'copilot', 'fileformat', 'filetype' },
      lualine_y = {},
      lualine_z = {}
    }
  }
}
