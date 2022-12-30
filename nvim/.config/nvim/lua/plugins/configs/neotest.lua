return function()
  require("neotest").setup({
    adapters = {
      require("neotest-vim-test")
    },
    consumers = {
      overseer = require('neotest.consumers.overseer')
    }
  })
end
