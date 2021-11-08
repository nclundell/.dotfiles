return function()
  require('compe').setup({
    source = {
      buffer = true,
      nvim_lsp = true,
      nvim_lua = true,
      path = true,
      vim_dadbod_completion = true
    }
  })
end
