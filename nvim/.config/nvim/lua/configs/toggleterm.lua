return function()
  require("toggleterm").setup {
    direction = 'float'
  }

  local Terminal  = require('toggleterm.terminal').Terminal
  local gobang = Terminal:new({ cmd = "gobang", hidden = true })
  local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
  local scratchpad = Terminal:new({ hidden = true })

  local map = require('utils').luamap

  -- Mappings
  map('n', '<leader>dd',  function() gobang:toggle() end)
  map('n', '<leader>gg',  function() lazygit:toggle() end)
  map('n', '<leader>tt',  function() scratchpad:toggle() end)

  map('t', '<leader>dd',  function() gobang:toggle() end)
  map('t', '<leader>gg',  function() lazygit:toggle() end)
  map('t', '<leader>tt',  function() scratchpad:toggle() end)
end
