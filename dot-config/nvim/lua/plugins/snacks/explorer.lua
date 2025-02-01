return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    explorer = {
      replace_netrw = true
    }
  },
  keys = {
    { "<leader>te", function() Snacks.picker.explorer() end, desc = "Explorer" },
  }
}
