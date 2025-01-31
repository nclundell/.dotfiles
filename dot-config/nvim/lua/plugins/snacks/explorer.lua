return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    explorer = {}
  },
  keys = {
    { "<leader>te", function() Snacks.picker.explorer() end, desc = "Explorer" },
  }
}
