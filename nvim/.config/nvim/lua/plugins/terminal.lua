return {
  'akinsho/toggleterm.nvim',
  opts = {
    direction = 'float'
  },
  init = function()
    local Terminal = require('toggleterm.terminal').Terminal

    local database = Terminal:new({
      cmd = "nvim -c 'DBUIToggle'",
      hidden = true
    })

    local lazygit = Terminal:new({
      cmd = "lazygit",
      hidden = true
    })

    local scratchpad = Terminal:new({
      hidden = true
    })

    -- Keymaps

    vim.keymap.set(
      {'n', 't'},
      '<c-d>',
      function() database:toggle() end,
      { desc = 'Toggle Dadbod'}
    )

    vim.keymap.set(
      {'n', 't'},
      '<c-g>',
      function() lazygit:toggle() end,
      { desc = 'Toggle Lazygit'}
    )

    vim.keymap.set(
      {'n', 't'},
      '<c-t>',
      function() scratchpad:toggle() end,
      { desc = 'Toggle Terminal'}
    )
  end
}
