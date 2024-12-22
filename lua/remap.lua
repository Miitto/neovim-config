map = function(mode, key, result, opts)
	vim.keymap.set(mode, key, result, opts or {})
end

map("n", "<leader>pv", vim.cmd.Ex, { desc = "Open File Browser" })

map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

map("n", "Y", "yg$")
map("n", "J", "mzJ`z", { desc = "Join lines" })

-- Center cursor on screen when page u/d
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- Center screen when iterating through search results
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Delete and paste without overwriting clipboard
map("x", "<leader>p", '"_dP', { desc = "Paste without overwriting clipboard" })
map("n", "<leader>d", '"_d', { desc = "Delete without overwriting clipboard" })
map("v", "<leader>d", '"_d', { desc = "Delete without overwriting clipboard" })

-- Yank to system clipboard
map("n", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
map("v", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
map("n", "<leader>Y", '"+Y', { desc = "Yank to system clipboard" })

map("n", "<C-k>", "<cmd>cnext<CR>zz")
map("n", "<C-j>", "<cmd>cprev<CR>zz")
map("n", "<leader>k", "<cmd>lnext<CR>zz")
map("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Replace all occurrences of word under cursor
map(
	"n",
	"<leader>rs",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Replace all occurrences of word under cursor" }
)

-- Windows holdover
map("i", "<C-c>", "<Esc>")
map({"i", "n", "v"}, "<C-s>", "<Esc>:w<CR>")

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
map("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
map("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
map("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- TIP: Disable arrow keys in normal mode
-- map('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- map('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- map('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- map('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
map("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
map("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
map("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
map("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

map("n", "<leader>td", function()
	vim.diagnostic.config({ virtual_text = not vim.diagnostic.config().virtual_text })
end, {
	desc = "[T]oggle [D]iagnostics",
})