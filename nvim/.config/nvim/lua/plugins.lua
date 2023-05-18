return {
  -- Colorschemes
  {
    'Mofiqul/dracula.nvim',
    'NTBBloodbath/doom-one.nvim',
    'shaunsingh/nord.nvim',
    'olimorris/onedarkpro.nvim'
  },

  -- Code Intelligence
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      {
        'neovim/nvim-lspconfig',
      },
      {
        'williamboman/mason.nvim',
        build = ':MasonUpdate',
      },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp',
        dependencies = {
          -- Completion Methods
          'hrsh7th/cmp-buffer',
          'hrsh7th/cmp-nvim-lsp',
          'hrsh7th/cmp-nvim-lua',
          'hrsh7th/cmp-path',

          -- UI Improvements
          'onsails/lspkind.nvim',

          -- Snippets
          'L3MON4D3/LuaSnip',
          'saadparwaiz1/cmp_luasnip',
          'rafamadriz/friendly-snippets'
        }
      }
    }
  },

  -- Commenting
  'numToStr/Comment.nvim',

  -- Database
  {
    'tpope/vim-dadbod',
    'kristijanhusak/vim-dadbod-ui',
    'kristijanhusak/vim-dadbod-completion',
    {
      "kndndrj/nvim-dbee",
      dependencies = {
        "MunifTanjim/nui.nvim",
      },
      build = function()
        -- Install tries to automatically detect the install method.
        -- if it fails, try calling it with one of these parameters:
        --    "curl", "wget", "bitsadmin", "go"
        require("dbee").install()
      end,
      config = function()
        require("dbee").setup(--[[optional config]])
      end,
    },
  },

  -- Debugging (DAP)
  {
    'mfussenegger/nvim-dap',
    dependencies = {
      'theHamsta/nvim-dap-virtual-text',
      'rcarriga/nvim-dap-ui',
      'suketa/nvim-dap-ruby'
    }
  },

  -- File Tree
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    }
  },

  -- Git
  'lewis6991/gitsigns.nvim',

  -- Indentation
  {
    'lukas-reineke/indent-blankline.nvim',
    'nmac427/guess-indent.nvim',
  },

  -- Pairs
  'windwp/nvim-autopairs',

  -- Ruby/Rails
  {
    'vim-ruby/vim-ruby',
    'tpope/vim-bundler',
    'tpope/vim-rake',
    'tpope/vim-rails',
  },

  -- Status Lines
  {
    'nvim-lualine/lualine.nvim',
    'nanozuki/tabby.nvim',
  },

  -- Surround
  'kylechui/nvim-surround',

  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
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
  'akinsho/toggleterm.nvim',

  -- Testing
  {
    'nvim-neotest/neotest',
    dependencies = {
      'olimorris/neotest-rspec'
    }
  },

  -- Treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
      'nvim-treesitter/nvim-treesitter-context',
      'windwp/nvim-ts-autotag',
      'RRethy/nvim-treesitter-endwise',
      'nvim-treesitter/playground'
    }
  }
}
