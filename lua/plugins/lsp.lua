vim.filetype.add({
  extension = {
    ixx = "cpp",
    cxx = "cpp",
  },
})

return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    local keys = require("lazyvim.plugins.lsp.keymaps").get()

    keys[#keys + 1] = {
      "K",
      function()
        return vim.lsp.buf.hover({ border = "rounded" })
      end,
      desc = "Hover",
    }

    opts.diagnostics = {
      float = {
        border = "rounded",
      },
    }

    opts.servers.clangd = {
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
