return {
  'williamboman/mason-lspconfig.nvim',
  opts = {
    ensure_installed = {
      'bashls',
      'gopls',
      'lua_ls',
      'pyright',
      'ruby_ls',
      'solargraph',
      'stimulus_ls',
      'tailwindcss',
      'tsserver'
    }
  }
}
