return {
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
}
