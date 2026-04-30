return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	enabled = false,
	build = ":TSUpdate",

	opts = {
		sync_install = false,
	},

	init = function()
		-- pre-installed parsers
		---@module 'nvim-treesitter'
		---@type nvim-ts.parsers
		local ensureInstalled = {
			"ada",
			"c",
			"cpp",
			"c_sharp",
			"bibtex",
			"css",
			"go",
			"java",
			"json",
			"latex",
			"make",
			"cmake",
			"rust",
			"nix",
			"commonlisp",
			"nix",
			"ocaml",
			"powershell",
			"ruby",
			"scala",
			"zig",
			"haskell",
			"bash",
			"html",
			"javascript",
			"json",
			"lua",
			"markdown",
			"markdown_inline",
			"python",
			"query",
			"regex",
			"tsx",
			"typescript",
			"vim",
			"yaml",
			"typst",
		}
		local alreadyInstalled = require("nvim-treesitter.config").get_installed()
		local parsersToInstall = vim.iter(ensureInstalled)
			:filter(function(parser)
				return not vim.tbl_contains(alreadyInstalled, parser)
			end)
			:totable()
		require("nvim-treesitter").install(parsersToInstall)

		-- highlighting and intentation
		vim.api.nvim_create_autocmd("FileType", {
			callback = function()
				-- Enable treesitter highlighting and disable regex syntax
				pcall(vim.treesitter.start)
				-- Enable treesitter-based indentation
				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
