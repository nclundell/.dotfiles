local wk = require('which-key')
local Terminal  = require('toggleterm.terminal').Terminal
local gobang = Terminal:new({ cmd = 'gobang', hidden = true })
local lazygit = Terminal:new({ cmd = 'lazygit', hidden = true })
local scratchpad = Terminal:new({ hidden = true })

wk.register({
  t = {
    name = "Toggle",
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
    name = "Toggle",
    d = { function() gobang:toggle() end, "Database" },
    g = { function() lazygit:toggle() end, "Git" },
    t = { function() scratchpad:toggle() end, "Scratchpad" }
  }
},
{
  mode = 't',
  prefix = '<leader>'
})
