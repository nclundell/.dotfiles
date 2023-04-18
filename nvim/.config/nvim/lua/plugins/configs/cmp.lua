return function()
  local cmp = require('cmp')
  local cmp_action = require('lsp-zero').cmp_action()

  require("luasnip.loaders.from_vscode").lazy_load()

  cmp.setup({
    formatting = {
      format = require('lspkind').cmp_format(),
    },
    mapping = {
      ['<Tab>'] = cmp_action.luasnip_supertab(),
      ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
      ['<CR>'] = cmp.mapping.confirm({select = false}),
    },
    sources = {
      { name = 'vim-dadbod-completion' },
      { name = 'path' },
      { name = 'nvim_lsp' },
      { name = 'nvim_lua' },
      { name = 'buffer' },
      { name = 'luasnip' }
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered()
    },
  })
end
