return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      require('telescope').setup {
        defaults = {
          file_ignore_patterns = { 'node_modules' },
          layout_config = {
            prompt_position = 'top'
          },
          sorting_strategy = 'ascending'
        }
      }

      local tb = require('telescope.builtin')
      local select_layout = require('telescope.themes').get_dropdown({ previewer = false })

      require('which-key').register({
        ['/'] = { function() tb.current_buffer_fuzzy_find() end, 'Enhanced Search' },
        l = {
          name = 'List',
          c = { function() tb.git_commits() end, 'List Commits' },
          d = { function() tb.lsp_definitions() end, 'List LSP Definitions' },
          r = { function() tb.lsp_references() end, 'List LSP References' },
          s = { function() tb.lsp_document_symbols() end, 'List LSP Symbols' },
          t = { function() tb.treesitter() end, 'List Treesitter Objects' }
        },
        o = {
          name = 'Open',
          f = { function() tb.find_files() end, 'Open Files' },
          h = { function() tb.help_tags() end, 'Open Help Pages' },
          r = { function() tb.oldfiles() end, 'Open Recent Files' }
        },
        s = {
          name = 'Search/Select',
          a = { function() tb.live_grep() end, 'Search All Files' },
          b = { function() tb.buffers(select_layout) end, 'Select Buffer' },
          c = { function() tb.colorscheme(select_layout) end, 'Select Colorscheme' },
          o = { function() tb.live_grep({ grep_open_files = true }) end, 'Search Open Files (Buffers)' },
          t = { function() tb.live_grep({ search_dirs = { 'spec' } }) end, 'Search Test Files' }

        }
      },
      {
        prefix = '<leader>'
      })
    end
  },

  -- Extensions
  {
    'LinArcX/telescope-env.nvim',
    config = function()
      require('telescope').load_extension('env')

      require('which-key').register({
        le = { function() require('telescope').extensions.env.env() end, 'List Environmental Variables' }
      },
      {
        prefix = '<leader>'
      })
    end
  },
  {
    'nvim-telescope/telescope-file-browser.nvim',
    config = function()
      require('telescope').load_extension('file_browser')

      local select_layout = require('telescope.themes').get_dropdown({ previewer = false })

      require('which-key').register({
        f = { function() require('telescope').extensions.file_browser.file_browser(select_layout) end, 'File Browser' }
      },
      {
        prefix = '<leader>'
      })
    end
  },
  -- {
  --   'nvim-telescope/telescope-fzf-native.nvim',
  --   build = 'make',
  --   config = function()
  --     require('telescope').load_extension('fzf')
  --   end
  -- },
  {
    'natecraddock/telescope-zf-native.nvim',
    config = function()
      require('telescope').load_extension('zf-native')
    end
  },
  {
    'debugloop/telescope-undo.nvim',
    main = 'telescope',
    config = function()
      require('telescope').load_extension('undo')

      require('which-key').register({
        u = { function() require('telescope').extensions.undo.undo() end, 'Undo' }
      },
      {
        prefix = '<leader>'
      })
    end
  }
}
