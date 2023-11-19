return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufReadPost", "BufNewFile" },
	opts = {
		indent = { char = "┊" },
		scope = { enabled = false },
	},
	main = "ibl",
}
