return {
  {
    'vidocqh/auto-indent.nvim',
    enabled = true,
    opts = {
      indentexpr = function(lnum)
        return require("nvim-treesitter.indent").get_indent(lnum)  -- get indentation from treesiter
      end
    },
  }
}
