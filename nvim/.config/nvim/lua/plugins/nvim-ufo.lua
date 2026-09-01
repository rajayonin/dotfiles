return {
	"kevinhwang91/nvim-ufo",

	dependencies = { "kevinhwang91/promise-async" },
	event = "VeryLazy",

	keys = {
		{
			"zR",
			function()
				require("ufo").openAllFolds()
			end,
			mode = "n",
			{ desc = "Open all folds" },
		},
		{
			"zM",
			function()
				require("ufo").closeAllFolds()
			end,
			mode = "n",
			{ desc = "Close all folds" },
		},
		{
			"zp",
			function()
				require("ufo").peekFoldedLinesUnderCursor()
			end,
			mode = "n",
			{ desc = "Peek folded lines under cursor" },
		},
	},

	init = function()
		vim.opt.foldcolumn = "1"
		vim.opt.foldlevel = 99
		vim.opt.foldlevelstart = 99
		vim.opt.foldenable = true

		-- fold characters
		vim.o.fillchars = "eob: ,fold: ,foldopen:,foldsep: ,foldinner: ,foldclose:"

		local wk = require("which-key")
		wk.add({
			{ "z", group = "fold" },
		})
	end,

	opts = {
		provider_selector = function()
			return { "treesitter", "indent" }
		end,
	},
}
