return function()
  require('lualine').setup{
    options = {
      globalstatus = true,
      theme = 'nord'
    },
    winbar = {
      lualine_a = {'fileformat'},
      lualine_b = {},
      lualine_c = {'filename', 'diagnostics', 'diff'},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {}
    },
    inactive_winbar = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {'filename', 'diagnostics', 'diff'},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {}
    }
  }
end
