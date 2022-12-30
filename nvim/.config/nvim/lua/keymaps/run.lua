local map = require('utils.keymap')

map(
  'n',
  '<leader>rf',
  '<CMD> TestFile -strategy=toggleterm <CR>',
  { 
    desc = 'Run Test (File)'
  }
)

map(
  'n',
  '<leader>rr',
  '<CMD> TestNearest -strategy=toggleterm <CR>',
  { 
    desc = 'Run Test (Nearest)' 
  }
)

map(
  'n',
  '<leader>rs',
  '<CMD> TestSuite -strategy=toggleterm <CR>',
  { 
    desc = 'Run Test (Suite)'
  }
)

map(
  'n',
  '<leader>rt',
  function() require('overseer').run_template() end,
  { 
    desc = 'Run Task' 
  }
)
