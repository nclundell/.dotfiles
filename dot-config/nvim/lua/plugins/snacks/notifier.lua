return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    notifier = {
      enabled = true,
      timeout = 3000
    },
    styles = {
      notification = {
        wo = {
          wrap = true
        }
      }
    }
  },
  keys = {
    { "<leader>sn",  function() Snacks.notifier.show_history() end, desc = "Notification History" },
    { "<leader>un", function() Snacks.notifier.hide() end, desc = "Dismiss All Notifications" }
  }
}
