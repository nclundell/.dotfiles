require('paq') {
  -- Paq Self Management
  'savq/paq-nvim';

  -- Common Deps
  'kyazdani42/nvim-web-devicons';
  'nvim-lua/plenary.nvim'; 
  'nvim-lua/popup.nvim'; 

  -- Color Schemes
  'Mofiqul/dracula.nvim';
  'shaunsingh/nord.nvim';
  'navarasu/onedark.nvim';
  'NTBBloodbath/doom-one.nvim';

  -- Command Prompt
  'mrjones2014/legendary.nvim';

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

  -- Folding
  'anuvyklack/pretty-fold.nvim';

  -- Git
  'lewis6991/gitsigns.nvim';
  'kdheepak/lazygit.nvim';

  -- Indentation
  'tpope/vim-sleuth';
  -- 'nmac427/guess-indent.nvim';
  'lukas-reineke/indent-blankline.nvim';

  -- LSP
  'neovim/nvim-lspconfig';

  -- Movement
  'phaazon/hop.nvim';

  -- Pairs
  'windwp/nvim-autopairs';
  'windwp/nvim-ts-autotag';

  -- Project Tree
  'kyazdani42/nvim-tree.lua';

  -- Sidebar
  'sidebar-nvim/sidebar.nvim';

  -- Snippets
  -- 'L3MON4D3/LuaSnip';
  -- 'rafamadriz/friendly-snippets';

  -- Status Line
  'nvim-lualine/lualine.nvim';

  -- Telescope
  'nvim-telescope/telescope.nvim';
  'nvim-telescope/telescope-file-browser.nvim';
  'nvim-telescope/telescope-ui-select.nvim';
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  };

  -- Terminal
  'numToStr/FTerm.nvim';

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
