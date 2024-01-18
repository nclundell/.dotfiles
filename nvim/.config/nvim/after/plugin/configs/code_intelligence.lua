-- CMP
local cmp = require('cmp')
local luasnip = require("luasnip")
local map = require('utils.keymap')

local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match('%s') == nil
end

require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
  formatting = {
    format = require('lspkind').cmp_format(),
  },
  mapping = {
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
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
    end, { 'i', 's' })
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
    { name = 'buffer' },
    { name = 'path' },
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered()
  },
})

-- Mason
require('mason').setup {}
require("mason-lspconfig").setup {}

-- LSP Setup
local lsp = require('lspconfig')

lsp.gopls.setup {}
lsp.lua_ls.setup {}
lsp.pyright.setup {}
lsp.rust_analyzer.setup {}
-- lsp.solargraph.setup {}
lsp.ruby_ls.setup {}
lsp.sqlls.setup {}
lsp.tsserver.setup {}

-- Keymaps
map('n', 'gD', function() vim.lsp.buf.declaration() end, { desc = 'Go to Declaration' })
map('n', 'gd', function() vim.lsp.buf.definition() end, { desc = 'Go to Definition' })
map('n', 'K', function() vim.lsp.buf.hover() end, { desc = 'Hover on Cursor' })
map('n', 'R', function() vim.lsp.buf.rename() end, { desc = 'Rename Symbol' })
