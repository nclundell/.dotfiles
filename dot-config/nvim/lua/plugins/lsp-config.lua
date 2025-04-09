return {
  'neovim/nvim-lspconfig',
  config = function()
    local lsp = require('lspconfig')

    lsp.basedpyright.setup {}
    lsp.bashls.setup {}
    lsp.cssls.setup {}
    lsp.ember.setup {}
    lsp.eslint.setup {}
    lsp.html.setup {}
    lsp.jsonls.setup {}
    lsp.lua_ls.setup {}
    lsp.ruby_lsp.setup {}
    -- lsp.solargraph.setup {}
    lsp.stimulus_ls.setup {}
    lsp.tailwindcss.setup {}
    lsp.ts_ls.setup {}
    lsp.yamlls.setup {}
  end
}
