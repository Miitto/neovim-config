vim.filetype.add({
  extension = {
    ixx = "cpp",
    cxx = "cpp",
  },
})

return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.diagnostics = {
      float = {
        border = "rounded",
      },
    }

    opts.servers["*"].keys["K"] = {
      function()
        return vim.lsp.buf.hover({ border = "rounded" })
      end,
      desc = "Hover",
    }

    opts.servers.clangd = {
      mason = false,
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
    }
  end,
}
