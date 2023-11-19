-- set space as leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- bindings
local keymap = vim.keymap.set
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

-- select all
keymap("n", "<leader>sa", "ggVG<CR>", { desc = "[S]elect [A]ll" })

-- replace all
keymap("n", "<leader>ra", ":%s/", { desc = "[R]eplace [A]ll" })

-- toggle relative numbering
keymap(
	"n",
	"<leader>tn",
	":if &relativenumber | set norelativenumber | else | set relativenumber | endif<CR>",
	{ desc = "[T]oggle [N]umbering" }
)

-- colorscheme
keymap("n", "<leader>cn", ":colorscheme nightfox<CR>", { desc = "[C]olorscheme [N]ightfox" })
keymap("n", "<leader>cd", ":colorscheme dayfox<CR>", { desc = "[C]olorscheme [D]ayfox" })

-- space do nothing
keymap({ "n", "v" }, "<Space>", "<Nop>", default_opts)

-- exit insert and terminal mode
keymap("i", "jk", "<ESC>", default_opts)
keymap("t", "jk", "<C-\\><C-n>", default_opts)

-- center search results
keymap("n", "n", "nzz", default_opts)
keymap("n", "N", "Nzz", default_opts)

-- visual line wraps
keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", expr_opts)
keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", expr_opts)

-- paste over currently selected text without yanking it
keymap("v", "p", '"_dP', default_opts)

-- switch buffer
keymap("n", "<S-h>", ":bprevious<CR>", default_opts)
keymap("n", "<S-l>", ":bnext<CR>", default_opts)

-- toggle netrw
keymap({ "n" }, "<leader>x", ":Explore<CR>", { desc = "E[X]plore Netrw" })

-- create a folds
keymap("n", "<leader>cf", ":normal zf%<CR>", { desc = "[C]reate [F]old here" })
keymap(
	"n",
	"<leader>ca",
	":set foldmethod=expr|set foldexpr=nvim_treesitter#foldexpr()<CR>",
	{ desc = "[C]reate [A]ll folds" }
)
-- format
keymap("n", "<leader>fl", ":Format<CR>", { desc = "[F]ormat with [L]sp" })

-- neoformat
keymap("n", "<leader>fp", ":Neoformat<CR>", { desc = "[F]ormat with [N]eoformat" })

-- navigate panes
keymap("n", "<c-k>", ":wincmd k<CR>", default_opts)
keymap("n", "<c-j>", ":wincmd j<CR>", default_opts)
keymap("n", "<c-h>", ":wincmd h<CR>", default_opts)
keymap("n", "<c-l>", ":wincmd l<CR>", default_opts)

-- lsp info on hover
keymap("n", "<leader>h", ":lua vim.lsp.buf.hover()<CR>", { desc = "[H]over over, IntelliSense" })

-- diagnostic keymaps
keymap("n", "dp", vim.diagnostic.goto_prev, { desc = "[D]iagnostic message, go to [P]revious" })
keymap("n", "dn", vim.diagnostic.goto_prev, { desc = "[D]iagnostic message, go to [N]ext" })
keymap("n", "<leader>dm", vim.diagnostic.open_float, { desc = "Open floating [D]iagnostic [M]essage" })
keymap("n", "<leader>dl", vim.diagnostic.setloclist, { desc = "Open [D]iagnostics [L]ist" })
