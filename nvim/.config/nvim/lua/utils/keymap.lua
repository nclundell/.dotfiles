return function(mode, binding, command, opts)
  opts = vim.tbl_extend('keep', opts or {}, {
    noremap = true,
    silent = true,
    expr = false
  })

  vim.keymap.set(mode, binding, command, opts)
end
