return {
  'neovim/nvim-lspconfig',
  config = function()
    local capabilities = require('blink.cmp').get_lsp_capabilities()
    local lsp = require('lspconfig')

    lsp.basedpyright.setup { capabilities = capabilities }
    lsp.bashls.setup { capabilities = capabilities }
    lsp.lua_ls.setup { capabilities = capabilities }
    lsp.ruby_lsp.setup { capabilities = capabilities }
    lsp.solargraph.setup { capabilities = capabilities }
    lsp.stimulus_ls.setup { capabilities = capabilities }
    lsp.tailwindcss.setup { capabilities = capabilities }
    lsp.ts_ls.setup { capabilities = capabilities }
  end
}
