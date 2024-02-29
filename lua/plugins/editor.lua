return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        width = 31,
      },
      filesystem = {
        filtered_items = {
          visible = true,
        },
        hijack_netrw_behavior = "open_current",
      },
      event_handlers = {
        {
          event = "file_opened",
          handler = function(_)
            vim.cmd([[Neotree close]])
          end,
        },
      },
    },
  },
}
