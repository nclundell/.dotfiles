return function()
  local lsp = require('lspconfig')

  -- Golang
  lsp.gopls.setup {}

  -- Lua
  lsp.lua_ls.setup {}

  -- Python
  lsp.pyright.setup {}

  -- Rust
  lsp.rust_analyzer.setup {}

  -- Ruby
  lsp.solargraph.setup {}

  -- SQL
  lsp.sqlls.setup {}

  -- Typescript
  lsp.tsserver.setup {}
end
