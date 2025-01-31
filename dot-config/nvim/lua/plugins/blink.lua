return {
  'saghen/blink.cmp',
  dependencies = 'rafamadriz/friendly-snippets',
  version = '*',
  opts = {
    keymap = {
      ['<TAB>'] = {
        function (cmp)
          if cmp.snippet_active() then
            if cmp.is_visible() then
              return cmp.select_next()
            else
              return cmp.snippet_forward()
            end
          else
            return cmp.select_next()
          end
        end,
        'fallback'
      },
      ['<S-TAB>'] = {
        function (cmp)
          if cmp.snippet_active() then
            if cmp.is_visible() then
              return cmp.select_prev()
            else
              return cmp.snippet_backward()
            end
          else
            return cmp.select_prev()
          end
        end,
        'fallback'
      },
      ['<ESC>'] = {
        'hide',
        'fallback'
      },
      ['<CR>'] = {
        'select_and_accept',
        'fallback'
      },
      ['<C-SPACE>'] = {
        'show',
        'show_signature',
        'hide_signature',
        'fallback'
      },
      ['<C-h>'] = {
        'hide_documentation',
        'fallback'
      },
      ['<C-j>'] = {
        'scroll_documentation_down',
        'fallback'
      },
      ['<C-k>'] = {
        'scroll_documentation_up',
        'fallback'
      },
      ['<C-l>'] = {
        'show_documentation',
        'fallback'
      }
    },
    completion = {
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 500
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
    signature = {
      enabled = true
    }
  }
}
