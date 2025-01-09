return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'pnx/lualine-lsp-status'
  },
  opts = {
    extensions = {
      'lazy',
      'mason',
      'trouble'
    },
    options = {
      component_separators = { left = '', right = '' },
      -- section_separators = { left = '', right = '' },
      section_separators = { left = '', right = '' },
      -- section_separators = { left = '', right = '' },
      globalstatus = true,
      path = 1,
      refresh = {
        winbar = 100
      }
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_c = { 'lsp-status', 'fileformat', 'filetype', 'filename' },
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    }
  }
}
