dofile(vim.g.base46_cache .. "nvimtree")

return {
  "nvim-tree/nvim-tree.lua",
  opts = {
   filters = { dotfiles = false },
  disable_netrw = true,
  hijack_cursor = true,
  sync_root_with_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = false,
  },
  view = {
    width = 30,
    preserve_window_proportions = true,
  },
  renderer = {
    root_folder_label = false,

    highlight_git = true,
    indent_markers = { enable = true },
    icons = {
      glyphs = {
        default = "󰈚",
        folder = {
          default = "",
          empty = "",
          empty_open = "",
          open = "",
          symlink = "",
        },
        git = { unmerged = "" },
      },
    },
  },
   on_attach = function(bufnr)

      local api = require("nvim-tree.api")
      local map = vim.keymap.set

      local function opts(desc)

        return {
          desc = "nvim-tree: " .. desc,
          buffer = bufnr,
          noremap = true,
          silent = true,
          nowait = true,
        }
      end

      api.config.mappings.default_on_attach(bufnr)

      -- custom bindings
      map("n", "<C-t>", api.tree.change_root_to_parent, opts("Up"))
      map("n", "?", api.tree.toggle_help, opts("Help"))
      map('n', 'l', api.node.open.edit, opts('Open'))
      map('n', 'h', api.node.navigate.parent_close, opts('Close Directory'))
      map("n", "L", api.node.open.preview, opts("Open Preview"))
    end,
  },
}
