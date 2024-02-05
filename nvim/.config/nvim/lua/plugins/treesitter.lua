return {
  {
    'nvim-treesitter/nvim-treesitter',
    main = 'nvim-treesitter.configs',
    opts = {
      auto_install = true,
      highlight = {
        enable = true
      },
      indentation = {
        enable = true
      }
    }
  },
  {
    'nvim-treesitter/nvim-treesitter-textobjects',
    main = 'nvim-treesitter.configs',
    opts = {
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
  },
  {
    'windwp/nvim-ts-autotag',
    main = 'nvim-treesitter.configs',
    opts = {
      autotag = {
        enable = true
      }
    }
  },
  {
    'RRethy/nvim-treesitter-endwise',
    main = 'nvim-treesitter.configs',
    opts = {
      endwise = {
        enable = true,
      }
    }
  },
  {
    'nvim-treesitter/nvim-treesitter-context',
    opts = {
      patterns = {
        ruby = {
          'assignment',
          'block',
          'do_block',
        }
      }
    }
  }
}
