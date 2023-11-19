-- set tabs & indentation
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.autoindent = true

-- set highlight on search
vim.o.hlsearch = false

-- enable mouse mode
vim.o.mouse = "a"

-- sync clipboard between OS and Neovim
vim.o.clipboard = "unnamedplus"

-- preserve horizontal blocks of text
vim.o.breakindent = true

-- save undo history
vim.o.undofile = true

-- case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- keep signcolumn off by default
vim.o.signcolumn = "yes"

-- decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

-- set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- enable more colors
vim.o.termguicolors = true

-- highlight cursorline
vim.o.cursorline = true

-- enalble (relative) line numbering
vim.o.number = true
vim.o.relativenumber = true

-- split window below and to the right
vim.o.splitright = true
vim.o.splitbelow = true

-- highlight on yank
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})

vim.cmd([[
hi Normal guibg=NONE ctermbg=NONE
]])
