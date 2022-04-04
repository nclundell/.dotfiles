return function()
  local map = require('utils').map

  map("n", "<leader>gg", "<CMD> lua require('lazygit').lazygit() <CR>")
end
