return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup {}

    local Terminal = require("toggleterm.terminal").Terminal

    local database = Terminal:new {
      cmd = "nvim -c DBUI",
      display_name = "Database",
      hidden = true,
      direction = "float",
      float_opts = {
        border = "curved"
      }
    }

    local lazygit = Terminal:new {
      cmd = "lazygit",
      display_name = "LazyGit",
      hidden = true,
      direction = "float",
      float_opts = {
        border = "curved"
      }
    }

    local lazydocker = Terminal:new {
      cmd = "lazydocker",
      display_name = "LazyDocker",
      hidden = true,
      direction = "float",
      float_opts = {
        border = "curved"
      }
    }

    local bash = Terminal:new {
      cmd = "bash",
      display_name = "Bash",
      hidden = true,
      direction = "float",
      float_opts = {
        border = "curved"
      }
    }

    local map = vim.keymap.set

    map({"t", "n"}, "<leader>gg", function () lazygit:toggle() end, { noremap = true, silent = true })
    map({"t", "n"}, "<leader>db", function () database:toggle() end, { noremap = true, silent = true })
    map({"t", "n"}, "<leader>dd", function () lazydocker:toggle() end, { noremap = true, silent = true })
    map({"t", "n"}, "<leader>tt", function () bash:toggle() end, { noremap = true, silent = true })
  end
}
