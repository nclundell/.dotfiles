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
  -- {
  --   'Exafunction/codeium.vim',
  --   event = 'BufEnter',
  --   config = function()
  --     vim.g.codeium_disable_bindings = 1
  --
  --     vim.keymap.set('i', '<c-l>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
  --     vim.keymap.set('i', '<c-j>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
  --     vim.keymap.set('i', '<c-k>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
  --     vim.keymap.set('i', '<c-h>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
  --   end
  -- },
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    opts = {
      panel = { enabled = false },
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = '<c-l>',
          next = '<c-j>',
          prev = '<c-k>',
          dismiss = '<c-h>'
        },
      },
    }
  },
  {
    'neovim/nvim-lspconfig',
    init = function()
      local lsp = require('lspconfig')

      lsp.bashls.setup {}
      lsp.gopls.setup {}
      lsp.lua_ls.setup {}
      lsp.pyright.setup {}
      lsp.rust_analyzer.setup {}
      lsp.solargraph.setup {}
      -- lsp.ruby_ls.setup {}
      lsp.sqls.setup {}
      lsp.stimulus_ls.setup {}
      lsp.tailwindcss.setup {}
      lsp.tsserver.setup {}
    end
  },
  {
    'williamboman/mason.nvim',
    opts = {}
  },
  {
    'williamboman/mason-lspconfig.nvim',
    opts = {
      ensure_installed = {
        'bashls',
        'gopls',
        'lua_ls',
        'pyright',
        'ruby_ls',
        'solargraph',
        'sqls',
        'stimulus_ls',
        'tailwindcss',
        'tsserver'
      }
    }
  },
  {
    'folke/neodev.nvim',
    opts = {}
  }
}

