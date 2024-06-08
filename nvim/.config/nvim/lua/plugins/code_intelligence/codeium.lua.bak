return {
    'Exafunction/codeium.vim',
    event = 'InsertEnter',
    config = function()
      vim.g.codeium_disable_bindings = 1

      local map = vim.keymap.set
      map('i', '<c-h>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
      map('i', '<c-j>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
      map('i', '<c-k>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
      map('i', '<c-l>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
    end
  }
