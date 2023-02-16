return function()
  local lsp = require('lspconfig')

  -- Golang
  lsp.gopls.setup {}

  -- Lua
  lsp.lua_ls.setup {}

  -- Python
  lsp.pyright.setup {}

  -- Ruby
  lsp.solargraph.setup {}

  -- Typescript
  lsp.tsserver.setup {}
end
