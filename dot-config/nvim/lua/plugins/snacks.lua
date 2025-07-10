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
    notifier = {
      enabled = true,
      timeout = 3000,
    },
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
        diagnostics = {
          layout = "ivy"
        },
        diagnostics_buffer = {
          layout = {
            preview = "main",
            preset = "ivy",
          },
          jump = { match = true },
          main = { current = true }
        },
        files = {
          matcher = {
            frecency = true,
            sort_empty = true
          }
        },
        keymaps = {
          layout = "select"
        },
        qflist = {
          layout = "ivy"
        }
      }
    },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    styles = {
      notification = {
        wo = { wrap = true }
      }
    }
  },
  keys = {
    -- Top Pickers & Explorer

    -- Find
    { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
    { "<leader>fg", function() Snacks.picker.git_files() end, desc = "Find Git Files" },
    { "<leader>fn", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },
    { "<leader>fp", function() Snacks.picker.projects() end, desc = "Projects" },

    -- Git
    { "<leader>gs", function() Snacks.lazygit() end, desc = "Lazygit" },
    { "<leader>gl", function() Snacks.lazygit.log() end, desc = "Lazygit" },

    -- Grep
    { "<leader>gw", function() Snacks.picker.grep_word() end, desc = "Visual selection or word", mode = { "n", "x" } },

    -- LSP
    { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
    { "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto Declaration" },
    { "gr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References" },
    { "gI", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
    { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },

    -- Notifications
    { "<leader>n", function() Snacks.picker.notifications() end, desc = "Notification History" },
    { "<leader>un", function() Snacks.notifier.hide() end, desc = "Dismiss All Notifications" },

    -- Search
    { "<leader>sb", function() Snacks.picker.buffers() end, desc = "Select Buffer" },
    { "<leader>sc", function() Snacks.picker.command_history() end, desc = "Command History" },
    { "<leader>sC", function() Snacks.picker.commands() end, desc = "Commands" },
    { "<leader>sd", function() Snacks.picker.diagnostics_buffer() end, desc = "Buffer Diagnostics" },
    { "<leader>sD", function() Snacks.picker.diagnostics() end, desc = "Diagnostics" },
    { "<leader>sh", function() Snacks.picker.help() end, desc = "Help Pages" },
    { "<leader>si", function() Snacks.picker.icons() end, desc = "Icons" },
    { "<leader>sj", function() Snacks.picker.jumps() end, desc = "Jumps" },
    { "<leader>sk", function() Snacks.picker.keymaps() end, desc = "Keymaps" },
    { "<leader>sl", function() Snacks.picker.loclist() end, desc = "Location List" },
    { "<leader>sm", function() Snacks.picker.marks() end, desc = "Marks" },
    { "<leader>sq", function() Snacks.picker.qflist() end, desc = "Search Quickfix List" },
    { '<leader>sr', function() Snacks.picker.registers() end, desc = "Select Registers" },
    { "<leader>su", function() Snacks.picker.undo() end, desc = "Search Undo History" },

    -- Terminal
    { "<leader>tt", function() Snacks.terminal.toggle() end, desc = "Toggle Terminal", mode = { "n", "t" } },
    { "<leader>tn", function() Snacks.terminal.new() end, desc = "New Terminal" },
    { "<leader>tf", function() Snacks.terminal.focus() end, desc = "Focus Terminal" },
    { "<leader>tk", function() Snacks.terminal.kill() end, desc = "Kill Terminal" },

    -- Other
    { "]]",        function() Snacks.words.jump(vim.v.count1) end, desc = "Next Reference", mode = { "n", "t" } },
    { "[[",        function() Snacks.words.jump(-vim.v.count1) end, desc = "Prev Reference", mode = { "n", "t" } },
    { "<leader>/", function() Snacks.picker.lines() end, desc = "Buffer Search" },
    { "<leader>?", function() Snacks.picker.grep() end, desc = "Grep Project" },
    { "<leader>;", function() Snacks.picker.command_history() end, desc = "Command History" },
    { "<leader>:", function() Snacks.picker.commands() end, desc = "Commands" },
    { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
    { "<leader><leader>", function() Snacks.picker.keymaps() end, desc = "Keymaps" },
  }
}
