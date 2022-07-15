local wk = require('which-key')
local Terminal  = require('toggleterm.terminal').Terminal
local gobang = Terminal:new({ cmd = 'gobang', direction = 'float', hidden = true })
local lazygit = Terminal:new({ cmd = 'lazygit', direction = 'float', hidden = true })
local scratchpad = Terminal:new({ direction = 'float', hidden = true })

wk.register({
  t = {
    name = "Terminal",
    d = { function() gobang:toggle() end, "Database" },
    g = { function() lazygit:toggle() end, "Git" },
    t = { function() scratchpad:toggle() end, "Scratchpad" }
  }
},
{
  prefix = '<leader>'
})

wk.register({
  t = {
    name = "Terminal",
    d = { function() gobang:toggle() end, "Database" },
    g = { function() lazygit:toggle() end, "Git" },
    t = { function() scratchpad:toggle() end, "Scratchpad" }
  }
},
{
  mode = 't',
  prefix = '<leader>'
})
