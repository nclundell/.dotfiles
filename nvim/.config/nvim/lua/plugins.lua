return {
  -- Colorschemes
  {
    'catppuccin/nvim',
    'Mofiqul/dracula.nvim',
    'NTBBloodbath/doom-one.nvim',
    'olimorris/onedarkpro.nvim',
    'shaunsingh/nord.nvim'
  },

  -- Code Intelligence
  {
    -- Completion
    {
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',
      'hrsh7th/cmp-path',
      'saadparwaiz1/cmp_luasnip',
      'onsails/lspkind.nvim'
    },

    -- LSP
    {
      'neovim/nvim-lspconfig',
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
    },

    -- Snippets
    {
      'L3MON4D3/LuaSnip',
      'rafamadriz/friendly-snippets'
    }
  },

  -- Commenting
  'numToStr/Comment.nvim',

  -- Database
  {
    'tpope/vim-dadbod',
    'kristijanhusak/vim-dadbod-ui',
    'kristijanhusak/vim-dadbod-completion',
  },

  -- Debugging (DAP)
  {
    'mfussenegger/nvim-dap',
    'theHamsta/nvim-dap-virtual-text',
    'rcarriga/nvim-dap-ui',
    'suketa/nvim-dap-ruby'
  },

  -- Documentation
  {
    "luckasRanarison/nvim-devdocs",
    build = ':DevdocsFetch',
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "nvim-treesitter/nvim-treesitter",
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
    'nmac427/guess-indent.nvim'
  },

  -- Pairs
  'windwp/nvim-autopairs',

  -- Ruby/Rails
  {
    'vim-ruby/vim-ruby',
    'tpope/vim-bundler',
    'tpope/vim-rake',
    'tpope/vim-rails'
  },

  -- Status Lines
  'nvim-lualine/lualine.nvim',

  -- Surround
  'kylechui/nvim-surround',

  -- Telescope
  {
    {
      'nvim-telescope/telescope.nvim',
      dependencies = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim'
      },
    },

    -- Extensions
    'nvim-telescope/telescope-file-browser.nvim',
    'debugloop/telescope-undo.nvim',
    'LinArcX/telescope-env.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make'
    }
  },

  -- Terminal
  'akinsho/toggleterm.nvim',

  -- Testing
  {
    'nvim-neotest/neotest',
    dependencies = {
      'zidhuss/neotest-minitest',
      'olimorris/neotest-rspec'
    }
  },

  -- Tmux Integration
  'aserowy/tmux.nvim',

  -- Treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    'nvim-treesitter/nvim-treesitter-context',
    'nvim-treesitter/nvim-treesitter-textobjects',
    'windwp/nvim-ts-autotag',
    'RRethy/nvim-treesitter-endwise',
    'nvim-treesitter/playground'
  },

  -- UI
  {
    'anuvyklack/windows.nvim',
    dependencies = {
      'anuvyklack/middleclass',
      -- 'anuvyklack/animation.nvim'
    }
  }
}
