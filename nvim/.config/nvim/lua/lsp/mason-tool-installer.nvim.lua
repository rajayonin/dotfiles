return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",

  enabled = true,

	opts = {
		ensure_installed = {
			-- linters
			"pylint",
			"eslint_d",
			"ast-grep",
			-- formatters
			"prettier",
			"stylua",
		},
		integrations = {
			["mason-lspconfig"] = true,
		},
	},
}
