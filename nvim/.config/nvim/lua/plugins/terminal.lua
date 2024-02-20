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

    local github = Terminal:new({
      cmd = "gh dash",
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
    require('which-key').register({
      ['<c-d>'] = { function() database:toggle() end, 'Toggle Dadbod' },
      ['<c-g>'] = { function() lazygit:toggle() end, 'Toggle Lazygit' },
      ['<c-h>'] = { function() github:toggle() end, 'Toggle Github Dash' },
      ['<c-t>'] = { function() scratchpad:toggle() end, 'Toggle Terminal' }
    }, {
      mode = { 'n', 't' }
    })
  end
}
