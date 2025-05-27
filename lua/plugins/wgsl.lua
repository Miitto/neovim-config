vim.filetype.add({ extension = { wgsl = "wgsl" } })

return {
  "nvim-treesitter/nvim-treesitter",
  opts = { ensure_installed = { "wgsl" } },
}
