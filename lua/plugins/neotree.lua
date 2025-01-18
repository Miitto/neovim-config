local function neotree()
  local opts = {
    close_if_last_window = true,
    window = {
      position = "right",
    },
  }
  if vim.g.colemak then
    opts.window.mappings = {
      ["e"] = "noop",
      ["h"] = "open",
    }

    opts.filesystem = {
      window = {
        mappings = {
          ["e"] = "noop",
        },
      },
    }
  end

  return {
    "nvim-neo-tree/neo-tree.nvim",
    opts = opts,
  }
end

return neotree()
