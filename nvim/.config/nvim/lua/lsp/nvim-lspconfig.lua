return {
  "neovim/nvim-lspconfig",

  event = { "BufReadPre", "BufNewFile" },

  enabled = true,

  dependencies = {
    "saghen/blink.cmp",
    "antosha417/nvim-lsp-file-operations",
    "folke/neodev.nvim",
  },

  config = function()
    -- keymaps
    local keymap = vim.keymap -- for conciseness

    -- only setup keymaps if there's an LSP
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf, silent = true }

        -- set keybinds
        opts.desc = "Show LSP references"
        keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references

        opts.desc = "Go to declaration"
        keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration

        opts.desc = "Show LSP definitions"
        keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- show lsp definitions

        opts.desc = "Show LSP implementations"
        keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- show lsp implementations

        opts.desc = "Show LSP type definitions"
        keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions

        opts.desc = "See available code actions"
        keymap.set({ "n", "v" }, "<Ctrl>.", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection

        opts.desc = "Smart rename"
        keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename

        opts.desc = "Show buffer diagnostics"
        keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file

        opts.desc = "Show line diagnostics"
        keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

        -- opts.desc = "Go to previous diagnostic"
        -- keymap.set("n", "[d", vim.diagnostic.jump({count=-1, float=true}), opts) -- jump to previous diagnostic in buffer
        --
        -- opts.desc = "Go to next diagnostic"
        -- keymap.set("n", "]d", vim.diagnostic.jump({count=1, float=true}), opts) -- jump to next diagnostic in buffer

        opts.desc = "Show documentation for what is under cursor"
        keymap.set("n", "gh", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor

        opts.desc = "Restart LSP"
        keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary
      end,
    })

    -- diagnostics config
    vim.diagnostic.config({
      signs = {
        severity = {}, -- don't show it
        -- diagnostic symbols sign column
        -- text = {
        --   [vim.diagnostic.severity.ERROR] = " ",
        --   [vim.diagnostic.severity.WARN] = " ",
        --   [vim.diagnostic.severity.INFO] = " ",
        --   [vim.diagnostic.severity.HINT] = "󰠠 ",
        -- }
      },
      underline = {
        -- only show when errors
        severity = { min = vim.diagnostic.severity.WARN },
      },
    })

  end,
}
