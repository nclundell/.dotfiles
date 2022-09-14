local wk = require('which-key')
local gs = require('gitsigns')
local tb = require('telescope.builtin')
local lg = require('toggleterm.terminal').Terminal:new({ cmd = 'lazygit', hidden = true })

wk.register({
  g = {
    name = 'Git',
    b = { function() gs.blame_line({ full=true }) end, 'Blame' },
    c = { function() tb.git_commits() end, 'Commits' },
    d = { function() gs.diffthis() end, 'Diff' },
    f = { function() tb.git_files() end, 'Files' },
    s = { function() lg:toggle() end, 'Status' }
  }
},
{
  prefix = '<leader>'
})

wk.register({
  g = {
    name = 'Git',
    s = { function() lg:toggle() end, 'Status' },
  }
},
{
  mode = 't',
  prefix = '<leader>'
})
