return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    dashboard = { enabled = true },
    explorer = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    picker = {
      enabled = true,
      sources = {
        buffers = {
          layout = "select"
        },
        commands = {
          layout = "select"
        },
        command_history = {
          layout = "select"
        },
        keymaps = {
          layout = "select"
        }
      }
    },
    notifier = {
      enabled = true,
      timeout = 3000
    },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
  },
  keys = {
    -- Most Used Pickers
    { "<leader><leader>", function() Snacks.picker.smart() end, desc = "Smart Picker" },
    { "<leader>p", function() Snacks.picker.command_history() end, desc = "Command History" },
    { "<leader>P", function() Snacks.picker.commands() end, desc = "Commands" },
    { "<leader>k", function() Snacks.picker.keymaps() end, desc = "Keymaps" },

    -- Find
    { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Buffers" },
    { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },

    -- Search/Grep
    { "<leader>gb", function() Snacks.picker.lines() end, desc = "Grep Current Buffer" },
    { "<leader>gB", function() Snacks.picker.grep_buffers() end, desc = "Grep Buffers" },
    { "<leader>gf", function() Snacks.picker.grep() end, desc = "Grep Project" },
    { "<leader>gw", function() Snacks.picker.grep_word() end, desc = "Grep Word Under Cursor" },

    -- Other Pickers
    { "<leader>h", function() Snacks.picker.help() end, desc = "Help Tags" },
    { "<leader>l", function() Snacks.picker.lazy() end, desc = "Plugin Specs" },
    { "<leader>u", function() Snacks.picker.undo() end, desc = "Undo History" },

    -- Non-Picker Keymaps
    { "<leader>dd", function() Snacks.terminal.toggle("lazydocker") end, desc = "Lazydocker" },
    { "<leader>gg", function() Snacks.lazygit.open() end, desc = "Lazygit" },
    { "<leader>gl", function() Snacks.lazygit.log() end, desc = "Lazygit Logs" },
  },
}
