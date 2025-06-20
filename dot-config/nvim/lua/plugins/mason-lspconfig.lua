return {
  'mason-org/mason-lspconfig.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'mason-org/mason.nvim'
  },
  opts = {
    ensure_installed = {
      'bashls',
      'cssls',
      'html',
      'eslint',
      'lua_ls',
      'marksman',
      'rubocop',
      'ruby_lsp',
      'ts_ls'
    }
  }
}
