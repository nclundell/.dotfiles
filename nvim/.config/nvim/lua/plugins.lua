return require('packer').startup(function()
  -- Have Packer Manage Itself
  use {
    'wbthomason/packer.nvim', 
    opt = true
  }

  -- Alignment
  use  {
    'junegunn/vim-easy-align',
    config = require('configs.easyalign')
  }

  -- Colorschemes
  use {
    'shaunsingh/nord.nvim',
    'navarasu/onedark.nvim',
    'NTBBloodbath/doom-one.nvim'
  }

  -- Commenting
  use {
    'b3nj5m1n/kommentary'
  }

  -- Completion
  use {
    'hrsh7th/nvim-compe',
    config = require('configs.completion')
  }

  -- Database
  use {
    'tpope/vim-dadbod',
    requires = {
      'kristijanhusak/vim-dadbod-ui',
      'kristijanhusak/vim-dadbod-completion'
    }
  }

  -- Git
  use {
    {
      'lewis6991/gitsigns.nvim',
      config = require('configs.gitsigns'),
      requires = 'nvim-lua/plenary.nvim' 
    }, { 
      'TimUntersberger/neogit', 
      requires = 'nvim-lua/plenary.nvim' 
    }
  }

  -- Indentation
  use {
    'lukas-reineke/indent-blankline.nvim', 
    config = require('configs.indentline'),
  }

  -- Languages
  use 'tpope/vim-rails'
  use 'tpope/vim-bundler'
  use 'tpope/vim-rake'

  -- LSP
  use {
    {
      'neovim/nvim-lspconfig',
      config = require('configs.lsp'),
    }, {
      'glepnir/lspsaga.nvim'
    }
  }

  -- Pairs
  use {
    "steelsojka/pears.nvim",
    config = require('configs.pairs')
  }
  
  -- Project Tree
  use {
    'kyazdani42/nvim-tree.lua',
    config = require('configs.treenav'),
    requires = {
      'kyazdani42/nvim-web-devicons'
    }
  }

  -- Status Line
  use {
    'hoob3rt/lualine.nvim',
    config = require('configs.lualine')
  }

  -- Telescope Search
  use {
    'nvim-telescope/telescope.nvim',
    config = require('configs.telescope'),
    requires = {
      {'nvim-lua/popup.nvim'}, 
      {'nvim-lua/plenary.nvim'},
    }
  }

  -- Terminal
  --[[ use {
    'numtostr/FTerm.nvim',
    config = require('configs.fterm')
  } ]]

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    config = require('configs.treesitter'),
    run = function() vim.cmd [[ TSUpdate ]] end
  }

  -- Which-Key
  use {
    "folke/which-key.nvim",
    config = require('configs.whichkey'),
  }

  -- Lua
use {
  "folke/trouble.nvim",
  requires = "kyazdani42/nvim-web-devicons",
  config = function()
    require("trouble").setup {
    }
  end
}
end)