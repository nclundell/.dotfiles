return {
  'neovim/nvim-lspconfig',
  init = function()
    local lsp = require('lspconfig')

    lsp.basedpyright.setup {}
    lsp.bashls.setup {}
    lsp.lua_ls.setup {
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' }
          }
        }
      }
    }
    lsp.ruby_lsp.setup {}
    lsp.sorbet.setup {}
    lsp.stimulus_ls.setup {}
    lsp.tailwindcss.setup {}
    lsp.ts_ls.setup {}
  end
}
