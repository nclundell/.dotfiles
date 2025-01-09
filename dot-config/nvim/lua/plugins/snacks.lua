return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    dashboard = { enabled = true },
    indent = { enabled = true, animate = { enabled = false } },
    input = { enabled = true },
    notifier = { enabled = true, timeout = 3000 },
    quickfile = { enabled = true },
    statuscolumn = { enabled = true },

    styles = {
      notification = {
        wo = {
          wrap = true
        }
      },
      terminal = {
        border = 'solid'
      }
    }
  },
  keys = {
    { "<leader>n",  function() Snacks.notifier.show_history() end, desc = "Notification History" },
    { "<leader>bd", function() Snacks.bufdelete() end, desc = "Delete Buffer" },
    -- { "<leader>gB", function() Snacks.gitbrowse() end, desc = "Git Browse" },
    -- { "<leader>gb", function() Snacks.git.blame_line() end, desc = "Git Blame Line" },
    { "<leader>gf", function() Snacks.lazygit.log_file() end, desc = "Lazygit Current File History" },
    { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
    { "<leader>gl", function() Snacks.lazygit.log() end, desc = "Lazygit Log (cwd)" },
    { "<leader>un", function() Snacks.notifier.hide() end, desc = "Dismiss All Notifications" },
    { "<c-t>",      function() Snacks.terminal() end, desc = "Toggle Terminal" },
    { "<c-t>",      function() Snacks.terminal() end, mode = 't', desc = "Toggle Terminal" },
    { "<a-t>",      function() Snacks.terminal('$SHELL') end, desc = "Toggle Floating Terminal" },
    { "<a-t>",      function() Snacks.terminal('$SHELL') end, mode = 't', desc = "Toggle Floating Terminal" },
  }
}
