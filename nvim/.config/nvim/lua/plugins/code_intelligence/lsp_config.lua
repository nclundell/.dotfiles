return {
  'neovim/nvim-lspconfig',
  init = function()
    local lsp = require('lspconfig')

    lsp.bashls.setup {}
    lsp.gopls.setup {}
    lsp.lua_ls.setup {
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' }
          }
        }
      }
    }
    lsp.pyright.setup {}
    lsp.rust_analyzer.setup {}
    lsp.solargraph.setup {}
    -- lsp.ruby_lsp.setup {}
    lsp.stimulus_ls.setup {}
    lsp.tailwindcss.setup {}
    lsp.tsserver.setup {}
  end
}
