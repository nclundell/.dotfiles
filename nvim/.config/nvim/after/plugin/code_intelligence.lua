local lsp = require('lspconfig')

lsp.gopls.setup {}
lsp.lua_ls.setup {}
lsp.pyright.setup {}
lsp.rust_analyzer.setup {}
lsp.solargraph.setup {}
--lsp.ruby_ls.setup {}
lsp.sqlls.setup {}
lsp.tsserver.setup {}

vim.keymap.set(
  'i',
  '<Tab>',
  [[pumvisible() ? "\<C-n>" : "\<Tab>"]],
  { expr = true }
)

vim.keymap.set(
  'i',
  '<S-Tab>',
  [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]],
  { expr = true }
)
