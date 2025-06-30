return {
  'saghen/blink.cmp',
  dependencies = {
    'giuxtaposition/blink-cmp-copilot',
    'rafamadriz/friendly-snippets',
  },
  version = '1.*',
  opts = {
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
      default = { 'dadbod', 'lazydev', 'lsp', 'path', 'snippets', 'buffer', 'copilot' },
      providers = {
        copilot = {
          name = "copilot",
          module = "blink-cmp-copilot",
          score_offset = 100,
          async = true,
        },
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
