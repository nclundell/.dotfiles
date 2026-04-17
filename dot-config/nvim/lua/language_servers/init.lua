-- Language Server Protocol (LSP) --
vim.pack.add({ "https://github.com/neovim/nvim-lspconfig" })

-- LSPs to enable
vim.lsp.enable({
  'bashls',
  'cssls',
  'ember',
  'eslint_d',
  'html',
  'jsonls',
  'lua_ls',
  'marksman',
  'ruby_lsp',
  'stimulus_ls',
  'tailwindcss',
  'ts_ls',
  'yamlls'
})

-- Load custom server configs
require('language_servers.lua_ls')

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
    end
  end
})
