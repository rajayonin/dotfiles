return {
  {
    enabled = true,
    'vidocqh/auto-indent.nvim',
    opts = {
      indentexpr = function(lnum)
          return require("nvim-treesitter.indent").get_indent(lnum)  -- get indentation from treesiter
        end
    },
  }
}
