return {
	"sbdchd/neoformat",
	"tpope/vim-fugitive",
  "christoomey/vim-tmux-navigator",
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {},
	},
	{ "numToStr/Comment.nvim", opts = {} },
	{ "neoclide/coc.nvim", branch = "release" },
}
