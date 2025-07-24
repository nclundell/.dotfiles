return {
  'nvim-lualine/lualine.nvim',
  opts = {
    extensions = {
      'lazy',
      'mason'
    },
    options = {
      component_separators = { left = '', right = '' },
      section_separators = { left = '', right = '' },
      -- section_separators = { left = '', right = '' },
      -- section_separators = { left = '', right = '' },
      globalstatus = true,
      path = 1,
      refresh = {
        winbar = 100
      }
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = {},
      lualine_c = { 'branch', 'diff', 'diagnostics', 'lsp_status', 'fileformat', 'filetype', 'filename' },
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    },
  }
}
