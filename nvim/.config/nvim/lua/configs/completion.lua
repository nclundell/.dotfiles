return function()
  local cmp = require('cmp')
  local luasnip = require('luasnip')

  local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
  end

  local kind_icons = {
    Text = "",
    Method = "",
    Function = "",
    Constructor = "",
    Field = "",
    Variable = "",
    Class = "ﴯ",
    Interface = "",
    Module = "",
    Property = "ﰠ",
    Unit = "",
    Value = "",
    Enum = "",
    Keyword = "",
    Snippet = "",
    Color = "",
    File = "",
    Reference = "",
    Folder = "",
    EnumMember = "",
    Constant = "",
    Struct = "",
    Event = "",
    Operator = "",
    TypeParameter = ""
  }

  cmp.setup({
    formatting = {
      format = function(_, item)
	item.kind = ((kind_icons[item.kind] .. ' ') or '') .. item.kind
	return item
      end
    },
    mapping = {
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-p>"] = cmp.mapping.select_prev_item(),
      ["<C-n>"] = cmp.mapping.select_next_item(),
      ["<C-d>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-e>"] = cmp.mapping.close(),
      ["<CR>"] = cmp.mapping.confirm {
	 behavior = cmp.ConfirmBehavior.Replace,
	 select = true,
      },
      ["<Tab>"] = cmp.mapping(
	function(fallback)
	  if cmp.visible() then
	    cmp.select_next_item()
	  elseif luasnip.expand_or_locally_jumpable() then
	   luasnip.expand_or_jump()
	  elseif has_words_before() then
	   cmp.complete()
	  else
	    fallback()
	  end
	end, 
	{'i', 's'}
      ),
      ["<S-Tab>"] = cmp.mapping(
	function(fallback)
	  if cmp.visible() then
	    cmp.select_prev_item()
	  elseif luasnip.jumpable(-1) then
	    luasnip.jump(-1)
	  else
	    fallback()
	  end
	end,
	{'i', 's'}
      ),
    },
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
      end,
    },
    sources = {
      { name = 'nvim_lsp' },
      { name = 'luasnip' },
      { name = 'buffer' },
      { name = 'nvim_lua' },
      { name = 'path' },
      { name = 'cmdline' }
    } 
  })
end
