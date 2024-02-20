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
      t = {
        name = 'Toggle',
        d = { function() database:toggle() end, 'Toggle Dadbod' },
        g = { function() lazygit:toggle() end, 'Toggle Lazygit' },
        o = { function() github:toggle() end, 'Toggle Github Dash' },
        t = { function() scratchpad:toggle() end, 'Toggle Terminal' }
      }
    }, {
      mode = { 'n', 't' },
      prefix = '<leader>'
    })
  end
}
