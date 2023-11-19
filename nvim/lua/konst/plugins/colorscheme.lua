return {
	"EdenEast/nightfox.nvim",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("carbonfox")
	end,
}
-- return {
-- 	"folke/tokyonight.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {},
-- 	config = function()
-- 		vim.cmd([[colorscheme tokyonight-night]])
-- 	end,
-- }
