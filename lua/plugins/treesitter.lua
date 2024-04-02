return {
  {
    "NoahTheDuke/vim-just",
    ft = "just",
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    enabled = false,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      indent = {
        enable = true,
        disable = { "html" },
      },
    },
  },
}
