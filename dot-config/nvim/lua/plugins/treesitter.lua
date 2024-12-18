return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
    'RRethy/nvim-treesitter-endwise',
    'windwp/nvim-ts-autotag'
  },
  event = {
    'BufReadPre',
    'BufNewFile'
  },
  main = 'nvim-treesitter.configs',
  opts = {
    autotag = {
      enable = true
    },
    auto_install = true,
    endwise = {
      enable = true,
    },
    highlight = {
      enable = true
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = '<C-Space>',
        node_incremental = '<C-Space>',
        scope_incremental = false,
        node_decremental = '<BS>'
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
}
