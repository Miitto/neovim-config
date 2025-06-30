vim.filetype.add({
  extension = {
    ixx = "cpp",
    cxx = "cpp",
  },
})

return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      clangd = {
        cmd = {
          "clangd",
          "--experimental-modules-support",
          "--pretty",
          "--background-index",
          "--clang-tidy",
          "--header-insertion=iwyu",
          "--completion-style=detailed",
          "--function-arg-placeholders",
          "--fallback-style=llvm",
          "--enable-config",
        },
      },
    },
  },
}
