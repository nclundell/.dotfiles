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
      o = {
        name = 'Open',
        d = { function() database:toggle() end, 'Open Database Browser' },
        g = { function() lazygit:toggle() end, 'Open Lazygit' },
        o = { function() github:toggle() end, 'Open Github Dash' },
        t = { function() scratchpad:toggle() end, 'Open Terminal' }
      }
    }, {
      mode = { 'n', 't' },
      prefix = '<leader>'
    })
  end
}
