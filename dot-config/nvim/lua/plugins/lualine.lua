return {
  'nvim-lualine/lualine.nvim',
  opts = {
    extensions = {
      'lazy'
    },
    options = {
      component_separators = { left = '', right = '' },
      section_separators = { left = '', right = '' },
      globalstatus = true,
      path = 1,
      refresh = { winbar = 100 }
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = {},
      lualine_c = {
        'filetype',
        {
          'filename',
          symbols = {
            unnamed = ''
          }
        }
      },
      lualine_x = {
        {
          'lsp_status',
          symbols = {
            done = '',
            spinner = {}
          }
        },
      },
      lualine_y = {},
      lualine_z = {
        function()
          local ok, opencode = pcall(require, "opencode")
          return ok and opencode.statusline() or ""
        end
      },
    }
  }
}
