require('nvim-treesitter.configs').setup {
  autotag = {
    enable = true,
  },
  endwise = {
    enable = true,
  },
  ensure_installed = "all",
  highlight = {
    enable = true
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gss",
      node_incremental = "gsi",
      scope_incremental = "gsc",
      node_decremental = "gsd",
    }
  },
  indentation = {
    enable = true
  },
  textobjects = {
    lsp_interop = {
      enable = true,
      border = 'none',
      floating_preview_opts = {},
      peek_definition_code = {
        ["<leader>df"] = "@function.outer",
        ["<leader>dF"] = "@class.outer",
      }
    },
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner'
      },
      selection_modes = {
        ['@parameter.outer'] = 'v',
        ['@function.outer'] = 'v',
        ['@class.outer'] = '<c-v>'
      },
      include_surrounding_whitespace = true
    }
  }
}
