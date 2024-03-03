return {
  'akinsho/toggleterm.nvim',
  opts = {
    direction = 'float'
  },
  config = function()
    local Terminal = require('toggleterm.terminal').Terminal

    local database = Terminal:new({
      cmd = "nvim -c 'DBUIToggle'",
      hidden = true
    })

    local scratchpad = Terminal:new({
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
