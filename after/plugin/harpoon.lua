local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Add file to harpoon" })
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "Toggle harpoon menu" })

vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end, { desc = "Navigate to 1st harpoon file" })
vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end, { desc = "Navigate to 2nd harpoon file" })
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end, { desc = "Navigate to 3rd harpoon file" })
vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end, { desc = "Navigate to 4th harpoon file" })
