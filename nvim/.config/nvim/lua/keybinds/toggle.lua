local wk = require('which-key')
local Terminal  = require('toggleterm.terminal').Terminal
local dadbod = Terminal:new({ cmd = "nvim -c 'DBUIToggle'", hidden = true })
local lazygit = Terminal:new({ cmd = 'lazygit', hidden = true })
local scratchpad = Terminal:new({ hidden = true })

wk.register({
  t = {
    name = 'Toggle',
    b = { function() require('gitsigns').toggle_current_line_blame() end, 'Git Blame' },
    d = { function() dadbod:toggle() end, 'Database' },
    f = { function() require('nvim-tree').toggle() end, 'File Tree' },
    g = { function() lazygit:toggle() end, 'Git' },
    s = { function() scratchpad:toggle() end, 'Scratchpad' },
    t = { function() require('neotest').summary.toggle() end, 'Tests' }
  }
},
{
  prefix = '<leader>'
})

wk.register({
  t = {
    name = 'Toggle',
    d = { function() dadbod:toggle() end, 'Database' },
    g = { function() lazygit:toggle() end, 'Git' },
    s = { function() scratchpad:toggle() end, 'Scratchpad' }
  }
},
{
  mode = 't',
  prefix = '<leader>'
})
