return function()
  local cmp = require('cmp')
  local luasnip = require('luasnip')

  require('luasnip.loaders.from_vscode').lazy_load()

  local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
  end

  local merge = function(a, b)
    return vim.tbl_deep_extend('force', {}, a, b)
  end

  cmp.setup({
    completion = {
      completeopt = 'menu,menuone,noinsert'
    },
    formatting = {
      format = require('lspkind').cmp_format(),
    },
    mapping = {
      ['<CR>'] = cmp.mapping.confirm { select = false },
      ['<ESC>'] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.abort()
        else
          fallback()
        end
      end, { 'i', 's' }),
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
      end, { 'i', 's' }),
    },
    snippet = {
      expand = function(args)
        luasnip.lsp_expand(args.body)
      end
    },
    sources = {
      { name = 'vim-dadbod-completion' },
      { name = 'nvim_lua' },
      { name = 'nvim_lsp' },
      { name = 'buffer' },
      { name = 'luasnip' },
      { name = 'path' }
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered()
    },
  })
end
