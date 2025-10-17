-- disable C-f in command line mode
vim.keymap.set("c", "<C-f>", "<Nop>")

return {
  "saghen/blink.cmp",
  version = "1.*",

  enabled = true,

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = {
      preset = "none",
      ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
      ["<C-e>"] = { "hide" },
      ["<C-f>"] = { "select_and_accept" },

      ["<C-p>"] = { "select_prev", "fallback_to_mappings" },
      ["<C-n>"] = { "select_next", "fallback_to_mappings" },

      ["<C-u>"] = { "scroll_documentation_up", "fallback" },
      ["<C-d>"] = { "scroll_documentation_down", "fallback" },
    },

    appearance = { nerd_font_variant = "mono" },

    completion = {
      -- must match full word
      keyword = { range = "full" },

      -- don't auto insert completion
      list = { selection = { preselect = true, auto_insert = false } },

      -- show documentation / completions manually
      documentation = { auto_show = false },
      menu = { auto_show = false },
    },

    sources = {
      default = { "lazydev", "lsp", "path" },
      -- add lazydev
      providers = {
        lazydev = {
          name = "LazyDev",
          module = "lazydev.integrations.blink",
          -- make lazydev completions top priority (see `:h blink.cmp`)
          score_offset = 100,
        },
      },
    },

    -- rust fuzzy matcher
    fuzzy = { implementation = "prefer_rust_with_warning" },
  },
  opts_extend = { "sources.default" },
}
