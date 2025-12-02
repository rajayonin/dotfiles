return {
	-- { 'projekt0n/github-nvim-theme' },
	{ "rmehri01/onenord.nvim" },
	{
		"AlexvZyl/nordic.nvim",
		priority = 1000,
		opts = {
			-- swap_backgrounds = true,  -- use darker background
			cursorline = {
				theme = "light", -- cursor selection style
			},
		},
	},
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
}
