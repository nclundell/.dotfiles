return {
  'saghen/blink.cmp',
  dependencies = 'rafamadriz/friendly-snippets',
  version = '*',
  opts = {
    keymap = {
      ['<C-h>'] = {
        'hide',
        'fallback'
      },
      ['<C-j>'] = {
        'select_next',
        'fallback'
      },
      ['<C-k>'] = {
        'select_prev',
        'fallback'
      },
      ['<C-l>'] = {
        function (cmp)
          if cmp.snippet_active then
            return cmp.accept()
          else
            return cmp.select_and_accept()
          end
        end,
        'fallback'
      },
      ['<C-SPACE>'] = {
        'show',
        'show_documentation',
        'hide_documentation'
      },
      ['<TAB>'] = {
        'snippet_forward',
        'fallback'
      },
      ['<S-TAB>'] = {
        'snippet_backward',
        'fallback'
      }
    },
    completion = {
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 500
      },
      ghost_text = {
        enabled = true
      },
      list = {
        selection = {
          preselect = true,
          auto_insert = false
        }
      },
      menu = {
        draw = {
          columns = {
            { 'label', 'label_description', gap = 1 },
            { 'kind_icon', 'kind' }
          }
        }
      }
    },
    sources = {
      default = { 'dadbod', 'lazydev', 'lsp', 'path', 'snippets', 'buffer' },
      providers = {
        dadbod = {
          name = 'Dadbod',
          module = 'vim_dadbod_completion.blink'
        },
        lazydev = {
          name = 'LazyDev',
          module = 'lazydev.integrations.blink'
        }
      }
    },
    signature = { enabled = true }
  }
}
