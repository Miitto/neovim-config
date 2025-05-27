return {
  "m4xshen/hardtime.nvim",
  dependencies = { "MunifTanjim/nui.nvim" },
  opts = {
    disable_mouse = false,
    restricted_keys = {
      ["<Up>"] = { "n", "x" },
      ["<Down>"] = { "n", "x" },
      ["<Left>"] = { "n", "x" },
      ["<Right>"] = { "n", "x" },
    },
    disabled_keys = {
      ["<Up>"] = {},
      ["<Down>"] = {},
      ["<Left>"] = {},
      ["<Right>"] = {},
    },
  },
}
