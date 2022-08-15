return function()
  require('lualine').setup{
    options = {
      globalstatus = true
    },
    winbar = {
      lualine_a = {'filename'},
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {}
    },
    inactive_winbar = {
      lualine_a = {},
      lualine_b = {'filename'},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {}
    }
  }
end
