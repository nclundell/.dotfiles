return {
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      -- Snippets
      'L3MON4D3/LuaSnip',
      'rafamadriz/friendly-snippets',

      -- Sources
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',
      'hrsh7th/cmp-path',
      'kristijanhusak/vim-dadbod-completion',
      'saadparwaiz1/cmp_luasnip',

      -- UI
      'onsails/lspkind-nvim'
    },
    config = function()
      local lspkind = require('lspkind')
      local luasnip = require('luasnip')
      local cmp = require('cmp')

      cmp.setup({
        formatting = {
          format = lspkind.cmp_format()
        },
        mapping = {
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
          ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { 'i', 's' }),

          ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { 'i', 's' }),
        },
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
        sources = {
          { name = 'vim-dadbod-completion' },
          { name = 'nvim_lsp' },
          { name = 'nvim_lua' },
          { name = 'luasnip' },
          { name = 'path' },
          { name = 'buffer' }
        }
      })
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
      lsp.lua_ls.setup {
        settings = {
          Lua = {
            diagnostics = {
              globals = { 'vim' }
            }
          }
        }
      }
      lsp.pyright.setup {}
      lsp.rust_analyzer.setup {}
      lsp.solargraph.setup {}
      -- lsp.ruby_ls.setup {}
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
        'stimulus_ls',
        'tailwindcss',
        'tsserver'
      }
    }
  },
  {
    'folke/trouble.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },
    opts = {},
    config = function()
      require('which-key').register({
        t = {
          name = 'Toggle',
          d = { function () require('trouble').toggle() end, 'Toggle Diagnostics' }
        }
      },
      { prefix = '<leader>' })
    end
  },
  {
    'folke/neodev.nvim',
    opts = {}
  }
}

