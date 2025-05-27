return {
  "neovim/nvim-lspconfig",
  -- other settings removed for brevity
  opts = {
    ---@type lspconfig.options
    servers = {
      eslint = {
        settings = {
          experimental = {
            useFlatConfig = true,
          },
        },
      },
    },
  },
}
