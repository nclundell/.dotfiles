return function()
  local map = require('utils').luamap

  map('n', '<leader>gg', function() require('lazygit').lazygit() end)
end
