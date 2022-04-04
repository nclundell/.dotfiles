return function() 
  use 'wbthomason/packer.nvim'

  -- Colorschemes
  use {
    'Mofiqul/dracula.nvim',
    'navarasu/onedark.nvim',
    'NTBBloodbath/doom-one.nvim',
    {
      'shaunsingh/nord.nvim',
      config = require('settings.colorscheme')
    }
  }

  -- Commenting
  use {
    'numToStr/Comment.nvim',
    config = require('configs.comment')
  }

  -- Completion
  use { 
    'hrsh7th/nvim-cmp',
    config = require('configs.cmp'),
    requires = {
      'hrsh7th/cmp-buffer';
      'hrsh7th/cmp-cmdline';
      'hrsh7th/cmp-nvim-lsp';
      'hrsh7th/cmp-path';
   }
  }

   -- Folding
   use {
     'anuvyklack/pretty-fold.nvim',
     config = require('configs.prettyfold')
   }

  -- Git
  use {
    {
      'lewis6991/gitsigns.nvim',
      config = require('configs.gitsigns')
    },
    {
      'kdheepak/lazygit.nvim',
      config = require('configs.lazygit')
    }
  }

  -- Indentation
  use {
    'lukas-reineke/indent-blankline.nvim',
    {
      'nmac427/guess-indent.nvim',
      config = require('configs.guess-indent')
    }
  }

  -- LSP
  use {
    'neovim/nvim-lspconfig',
    config = require('configs.lsp')
  }

  -- Pairs
  use {
    {
      'windwp/nvim-autopairs',
      config = require('configs.autopairs')
    },
    'windwp/nvim-ts-autotag',
    'RRethy/nvim-treesitter-endwise'
  }

  -- Status Line
  use {
    'nvim-lualine/lualine.nvim',
    config = require('configs.lualine')
  }

   -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    config = require('configs.telescope'),
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-ui-select.nvim',
      'nvim-telescope/telescope-packer.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make'
      }
    }
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    config = require('configs.treesitter')
  }

end

--   -- Text Objects
--   'tpope/vim-surround';
--   'wellle/targets.vim';
-- }
