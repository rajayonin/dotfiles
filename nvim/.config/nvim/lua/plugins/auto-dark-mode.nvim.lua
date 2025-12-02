return {
	"f-person/auto-dark-mode.nvim",
	enabled = false,
	config = {
		update_interval = 3000,
		set_dark_mode = function()
            vim.cmd.colorscheme("nordic")
		end,
		set_light_mode = function()
			vim.cmd.colorscheme("catppuccin-latte")
		end,
	},
}
