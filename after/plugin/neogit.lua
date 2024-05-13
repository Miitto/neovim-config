local neogit = require('neogit')

neogit.setup({
  integrations = {
    diffview = true,
    telescope = true
  }
})

vim.keymap.set("n", "<leader>gm", neogit.open)
vim.keymap.set("n", "<leader>gc", function() neogit.open({"commit"}) end)
