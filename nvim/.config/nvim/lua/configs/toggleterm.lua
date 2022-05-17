return function()
  require("toggleterm").setup {
    direction = 'float'
  }

  local Terminal  = require('toggleterm.terminal').Terminal
  local gobang = Terminal:new({ cmd = "gobang", hidden = true })
  local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
  local rails_console = Terminal:new({ cmd = "bundle exec rails c", hidden = true })
  local rails_console_staging = Terminal:new({ cmd = "bundle exec rails c -e staging", hidden = true })
  local rails_console_production = Terminal:new({ cmd = "bundle exec rails c -e production", hidden = true })
  local scratchpad = Terminal:new({ hidden = true })

  local map = require('utils').luamap

  -- Mappings
  map('n', '<leader>dd',  function() gobang:toggle() end)
  map('n', '<leader>gg',  function() lazygit:toggle() end)
  map('n', '<leader>rc',  function() rails_console:toggle() end)
  map('n', '<leader>rcs', function() rails_console_staging:toggle() end)
  map('n', '<leader>rcp', function() rails_console_production:toggle() end)
  map('n', '<leader>tt',  function() scratchpad:toggle() end)

  map('t', '<leader>dd',  function() gobang:toggle() end)
  map('t', '<leader>gg',  function() lazygit:toggle() end)
  map('t', '<leader>rc',  function() rails_console:toggle() end)
  map('t', '<leader>rcs', function() rails_console_staging:toggle() end)
  map('t', '<leader>rcp', function() rails_console_production:toggle() end)
  map('t', '<leader>tt',  function() scratchpad:toggle() end)
end
