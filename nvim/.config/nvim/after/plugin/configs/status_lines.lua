-- LuaLine
require('lualine').setup{
  extensions = {
    'nvim-tree',
    'toggleterm'
  },
  options = {
    section_separators = { left = '', right = '' },
    globalstatus = true
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {{'filename', path = 1}},
    lualine_x = {},
    lualine_y = {'encoding', 'fileformat', 'filetype'},
    lualine_z = {'location'}
  },
  winbar = {
    lualine_a = {'filename'},
    lualine_b = {'diff'},
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

-- Tabby (Tab Line)
local theme = {
  fill = 'TabLineFill',
  head = 'TabLine',
  current_tab = 'TabLineSel',
  tab = 'TabLine',
  win = 'TabLine',
  tail = 'TabLine',
}

require('tabby.tabline').set(function(line)
return {
  {
    { '  ', hl = theme.head },
    line.sep('', theme.head, theme.fill),
  },
  line.tabs().foreach(function(tab)
    local hl = tab.is_current() and theme.current_tab or theme.tab
    return {
      line.sep('', hl, theme.fill),
      tab.is_current() and '' or '',
      -- tab.number(),
      tab.name(),
      -- tab.close_btn(''), -- show a close button
      line.sep('', hl, theme.fill),
      hl = hl,
      margin = ' ',
    }
  end),
  line.spacer(),
  -- shows list of windows in tab
  line.wins_in_tab(line.api.get_current_tab()).foreach(function(win)
    return {
      line.sep('', theme.win, theme.fill),
      win.is_current() and '' or '',
      win.buf_name(),
      line.sep('', theme.win, theme.fill),
      hl = theme.win,
      margin = ' ',
    }
  end),
  {
    line.sep('', theme.tail, theme.fill),
    { '  ', hl = theme.tail },
  },
  hl = theme.fill,
}
end)