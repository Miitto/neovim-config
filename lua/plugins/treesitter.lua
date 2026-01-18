return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    auto_install = true,
    indent = { enable = false },
    ensure_installed = {
      "comment",
      "markdown_inline",
      "json",
      "query",
      "regex",
    },
  },
}
