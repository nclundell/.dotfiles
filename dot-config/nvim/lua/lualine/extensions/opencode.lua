local M = {}

M.sections = {
  lualine_a = { function() return "OPENCODE" end },
  lualine_b = {},
  lualine_c = {},
  lualine_x = {},
  lualine_y = {},
  lualine_z = {},
}

M.filetypes = { 'opencode' }

return M
