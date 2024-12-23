-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
nmap = function(key, result, opts)
	vim.keymap.set({"n", "x"}, key, result, opts or {})
end

map = vim.keymap.set

function colemak()
    -- nav
    nmap("m", "h", { desc = "Left" })
    nmap("i", "l", { desc = "Right" })
    nmap("E", "e", { desc = "Move to end of word" })
    nmap("h", "i", { desc = "Append after cursor" })
    nmap("H", "I", { desc = "Append at end of line" })
    nmap("j", "n", { desc = "Find next" })
    nmap("J", "N", { desc = "Find previous" })

    -- better up/down
    nmap("n", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
    nmap("<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
    nmap("e", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
    nmap("<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

    -- Move to window using the <ctrl> pnea keys
    map("n", "<C-m>", "<C-w>h", { desc = "Go to Left Window", remap = true })
    map("n", "<C-n>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
    map("n", "<C-e>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
    map("n", "<C-i>", "<C-w>l", { desc = "Go to Right Window", remap = true })

    -- Move Lines
    map("n", "<A-n>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
    map("n", "<A-e>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
    map("i", "<A-n>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
    map("i", "<A-e>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
    map("v", "<A-n>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
    map("v", "<A-e>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

    -- buffers
    map("n", "<S-m>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
    map("n", "<S-i>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
end

colemak()

function isrt()
    -- nav
    nmap("p", "h", { desc = "Left" })
    nmap("n", "gj", { desc = "Down" })
    nmap("e", "gk", { desc = "Up" })
    nmap("a", "l", { desc = "Right" })
    nmap("E", "e", { desc = "Move to end of word" })
    nmap("h", "a", { desc = "Append after cursor" })
    nmap("H", "A", { desc = "Append at end of line" })
    nmap("j", "n", { desc = "Find next" })
    nmap("J", "N", { desc = "Find previous" })
    nmap("k", "p", { desc = "Paste" })
    nmap("K", "P", { desc = "Paste before" })

    -- better up/down
    nmap("n", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
    nmap("<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
    nmap("e", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
    nmap("<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

    -- Move to window using the <ctrl> pnea keys
    map("n", "<C-p>", "<C-w>h", { desc = "Go to Left Window", remap = true })
    map("n", "<C-n>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
    map("n", "<C-e>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
    map("n", "<C-a>", "<C-w>l", { desc = "Go to Right Window", remap = true })

    -- Move Lines
    map("n", "<A-n>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
    map("n", "<A-e>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
    map("i", "<A-n>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
    map("i", "<A-e>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
    map("v", "<A-n>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
    map("v", "<A-e>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

    -- buffers
    map("n", "<S-p>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
    map("n", "<S-a>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
end

-- isrt()