return function()
  local lsp = require('lspconfig')

  -- Lua
  lsp.sumneko_lua.setup {}

  -- Python
  lsp.pyright.setup {}

  -- Ruby
  lsp.solargraph.setup {}

  -- Typescript
  lsp.tsserver.setup {}
end
