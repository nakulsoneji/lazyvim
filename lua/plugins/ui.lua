return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      stages = "static",
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options.component_separators = {
        left = "│",
        right = "│",
      }
      opts.options.section_separators = {
        left = "",
        right = "",
      }
    end,
  },
}
