nmap = function(key, result, opts)
	vim.keymap.set({"n", "x", "o"}, key, result, opts or {})
end

-- ISRT nav
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