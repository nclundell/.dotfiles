local Utils = {}

function Utils.map(mode, binding, command, opts)
  opts = vim.tbl_extend('keep', opts or {}, {
    noremap = true,
    silent = true,
    expr = false
  })

  vim.api.nvim_set_keymap(mode, binding, command, opts)
end

function Utils.load_config(config)
  return function() 
    if pcall(require, config) then 
      require("configs."..config)() 
    end 
  end
end

return Utils
