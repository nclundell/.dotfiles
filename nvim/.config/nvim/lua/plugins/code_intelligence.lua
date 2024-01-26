return {
  {
    'echasnovski/mini.completion',
    opts = {},
    version = '*',
    init = function()
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
    end
  },
  {
    'Exafunction/codeium.vim',
    event = 'BufEnter',
    config = function()
      vim.g.codeium_disable_bindings = 1

      vim.keymap.set('i', '<m-g>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
      vim.keymap.set('i', '<m-]>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
      vim.keymap.set('i', '<m-[>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
      vim.keymap.set('i', '<m-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
    end
  },
  {
    'neovim/nvim-lspconfig',
    init = function()
      local lsp = require('lspconfig')

      lsp.gopls.setup {}
      lsp.lua_ls.setup {}
      lsp.pyright.setup {}
      lsp.rust_analyzer.setup {}
      lsp.solargraph.setup {}
      --lsp.ruby_ls.setup {}
      lsp.sqlls.setup {}
      lsp.tsserver.setup {}
    end
  },
  {
    'williamboman/mason.nvim',
    opts = {}
  },
  {
    'williamboman/mason-lspconfig.nvim',
    opts = {}
  },
  {
    'folke/neodev.nvim',
    opts = {}
  },
  {
    "j-hui/fidget.nvim",
    opts = {},
  }
}

