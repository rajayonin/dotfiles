return {
	{
		"folke/which-key.nvim",
		enabled = true,
		event = "VeryLazy",

		---@module 'wk'
		---@type wk.Opts
		opts = {
			preset = "helix",
			delay = function(ctx)
				return ctx.plugin and 0 or 500
			end,
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
}
