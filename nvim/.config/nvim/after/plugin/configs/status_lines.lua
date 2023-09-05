-- LuaLine
require('lualine').setup{
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
  -- winbar = {
  --   lualine_a = {'filename'},
  --   lualine_b = {'diff'},
  --   lualine_c = {},
  --   lualine_x = {},
  --   lualine_y = {},
  --   lualine_z = {}
  -- },
  -- inactive_winbar = {
  --   lualine_a = {},
  --   lualine_b = {'filename'},
  --   lualine_c = {'diff'},
  --   lualine_x = {},
  --   lualine_y = {},
  --   lualine_z = {}
  -- }
}
