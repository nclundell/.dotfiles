require('paq') {
  -- Paq Self Management
  'savq/paq-nvim';

  -- Common Deps
  'kyazdani42/nvim-web-devicons';
  'nvim-lua/plenary.nvim'; 
  'nvim-lua/popup.nvim'; 

  -- Color Schemes
  'shaunsingh/nord.nvim';
  'navarasu/onedark.nvim';
  'NTBBloodbath/doom-one.nvim';

  -- Commenting
  'numToStr/Comment.nvim';

  -- Completion
  'hrsh7th/nvim-cmp';
  'hrsh7th/cmp-buffer';
  'hrsh7th/cmp-cmdline';
  'hrsh7th/cmp-nvim-lsp';
  'hrsh7th/cmp-path';
  'saadparwaiz1/cmp_luasnip';

  -- Database
  'tpope/vim-dadbod';
  'kristijanhusak/vim-dadbod-ui';
  'kristijanhusak/vim-dadbod-completion';

  -- Git
  'lewis6991/gitsigns.nvim';
  'kdheepak/lazygit.nvim';

  -- Indentation
  'tpope/vim-sleuth';
  'lukas-reineke/indent-blankline.nvim';

  -- LSP
  'neovim/nvim-lspconfig';

  -- Pairs
  'windwp/nvim-autopairs';
  'windwp/nvim-ts-autotag';

  -- Project Tree
  'kyazdani42/nvim-tree.lua';

  -- Snippets
  'L3MON4D3/LuaSnip';
  'rafamadriz/friendly-snippets';

  -- Status Line
  'nvim-lualine/lualine.nvim';

  -- Telescope Search
  'nvim-telescope/telescope.nvim',
  'TC72/telescope-tele-tabby.nvim';
  'camgraff/telescope-tmux.nvim';
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  };

  -- Terminal
  'akinsho/toggleterm.nvim',

  -- Treesitter
  'nvim-treesitter/nvim-treesitter';

  -- Text Objects
  'tpope/vim-surround';
  'wellle/targets.vim';

  -- Which-Key
  "folke/which-key.nvim";

  -- Lua
  "folke/trouble.nvim";
}
