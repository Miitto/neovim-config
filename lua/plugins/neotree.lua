local function neotree()
  local opts = {
    hide_root_node = true,
    close_if_last_window = true,
    window = {
      position = "right",
    },
    filesystem = {
      group_empty_dirs = true,
      scan_mode = "deep",
    },
    buffer = {
      follow_current_file = true,
      group_empty_dirs = true,
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
