return {
  'mason-org/mason-lspconfig.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'mason-org/mason.nvim'
  },
  opts = {
    ensure_installed = {
      'cssls',
      'html',
      'eslint',
      'lua_ls',
      'rubocop',
      'ruby_lsp',
      'ts_ls'
    }
  }
}
