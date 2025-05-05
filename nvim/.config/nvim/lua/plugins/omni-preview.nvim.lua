return {
  "sylvanfranklin/omni-preview.nvim",
  keys = {
      { "<leader>pp", "<cmd>OmniPreview start<CR>", desc = "Preview Start" },
      { "<leader>pc", "<cmd>OmniPreview stop<CR>", desc = "Preview Stop" },
    },

	-- previewers
  dependencies = {
    -- Typst
    {
      "chomosuke/typst-preview.nvim",
      ft = "typst",
      version = "1.*",
      opts = {
        dependencies_bin = { ["tinymist"] = "tinymist" },
        -- Typst root is current working directory
        get_root = function(path_of_main_file)
          local root = os.getenv("TYPST_ROOT")
          if root then
            return root
          end
          -- return vim.fn.fnamemodify(path_of_main_file, ':p:h')
          return vim.loop.cwd()
        end,
      },
    },

    -- CSV
    { "hat0uma/csvview.nvim", lazy = true },
    -- Markdown
    {
      "toppair/peek.nvim",
      ft = "markdown",
      build = "deno task --quiet build:fast",
      config = function()

        require("peek").setup()
        local peek = require("peek")

        local function toggle()
          if peek.is_open() then
            peek.close()
          else
            peek.open()
          end
        end

        vim.api.nvim_create_user_command("MarkdownPreview", peek.open, {})
        vim.api.nvim_create_user_command("MarkdownPreviewClose", peek.close, {})
        vim.api.nvim_create_user_command("MarkdownPreviewToggle", toggle, {})
      end,
    },
  },
  opts = {},
}
