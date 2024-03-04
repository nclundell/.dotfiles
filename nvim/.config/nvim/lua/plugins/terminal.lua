return {
  'akinsho/toggleterm.nvim',
  config = function()
    local Terminal = require('toggleterm.terminal').Terminal

    local database = Terminal:new({
      direction = 'float',
      cmd = "nvim -c 'DBUIToggle'",
      hidden = true
    })

    local scratchpad = Terminal:new({
      direction = 'float',
      hidden = true
    })

    -- Keymaps
    require('which-key').register({
      D = { function() database:toggle() end, 'Open Database Browser' },
      T = { function() scratchpad:toggle() end, 'Toggle Terminal'}
    }, {
      mode = { 'n', 't' },
      prefix = '<leader>'
    })
  end
}
