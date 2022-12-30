return {
  -- Colorschemes
  'Mofiqul/dracula.nvim',
  'navarasu/onedark.nvim',
  'NTBBloodbath/doom-one.nvim',
  'shaunsingh/nord.nvim',

  -- Code Intelligence
  {
    -- LSP Support
    {
      'neovim/nvim-lspconfig',
      config = require('plugins.configs.lsp')
    },
    {
      'williamboman/mason.nvim',
      config = require('plugins.configs.mason')
    },

    -- Autocompletion
    { 'hrsh7th/nvim-cmp',
      config = require('plugins.configs.cmp'),
      dependencies = {
        -- Completion Methods
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-nvim-lua',
        'hrsh7th/cmp-path',

        -- UI Improvements
        'onsails/lspkind.nvim',
        'j-hui/fidget.nvim',

        -- Snippets
        'saadparwaiz1/cmp_luasnip',
        'L3MON4D3/LuaSnip',
        'rafamadriz/friendly-snippets'
      }
    }
  },

  -- Commenting
  {
    'numToStr/Comment.nvim',
    config = require('plugins.configs.comment')
  },

  -- Database
  {
    'tpope/vim-dadbod',
    'kristijanhusak/vim-dadbod-ui',
    'kristijanhusak/vim-dadbod-completion',
  },

  -- File Tree
  {
    'nvim-tree/nvim-tree.lua',
    config = require('plugins.configs.nvimtree'),
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    }
  },

  -- Git
  {
    'lewis6991/gitsigns.nvim',
    config = require('plugins.configs.gitsigns')
  },

  -- Indentation
  {
    'lukas-reineke/indent-blankline.nvim',
    'nmac427/guess-indent.nvim',
  },

  -- Pairs
  {
    'windwp/nvim-autopairs',
    config = require('plugins.configs.autopairs')
  },

  -- Ruby/Rails
  {
    'vim-ruby/vim-ruby',
    'tpope/vim-bundler',
    'tpope/vim-rake',
    'tpope/vim-rails',
  },

  -- Status Line
  {
    'nvim-lualine/lualine.nvim',
    config = require('plugins.configs.lualine')
  },

  -- Surround
  {
    'kylechui/nvim-surround',
    config = require('plugins.configs.surround')
  },

  -- Tasks
  {
    {
      'stevearc/overseer.nvim',
      config = require('plugins.configs.overseer')
    },
    {
      'nvim-neotest/neotest',
      config = require('plugins.configs.neotest'),
      dependencies = {
        'vim-test/vim-test',
        'nvim-neotest/neotest-vim-test',
        'nvim-lua/plenary.nvim',
        'nvim-treesitter/nvim-treesitter',
        'antoinemadec/FixCursorHold.nvim',
      }
    },
  },

  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    config = require('plugins.configs.telescope'),
    dependencies = {
      'nvim-lua/plenary.nvim';
      'nvim-telescope/telescope-ui-select.nvim',
      'nvim-telescope/telescope-file-browser.nvim',
      'LinArcX/telescope-env.nvim',
      {
	      'nvim-telescope/telescope-fzf-native.nvim',
	      build = 'make'
      }
    }
  },

  -- Terminal
  {
    'akinsho/toggleterm.nvim',
    config = require('plugins.configs.toggleterm')
  },

  -- Treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    config = require('plugins.configs.treesitter'),
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
      'nvim-treesitter/nvim-treesitter-context',
      'windwp/nvim-ts-autotag',
      'RRethy/nvim-treesitter-endwise',
      'nvim-treesitter/playground'
    }
  }
}
