return function()
  local cmp = require('cmp')

  cmp.setup({
    sources = {
      {name = "nvim_lsp"},
      {name = "buffer"},
      {name = "path"},
      {name = "cmdline"}
    } 
  })
end
