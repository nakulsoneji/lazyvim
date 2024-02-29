return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        glsl_analyzer = {
          mason = false,
        },
        clangd = {
          cmd = {
            "clangd",
            "--background-index",
            "--clang-tidy",
            "--header-insertion=iwyu",
            "--completion-style=detailed",
            "--function-arg-placeholders",
            "--fallback-style=llvm",
            "--query-driver=/usr/bin/arm-none-eabi-*",
          },
        },
      },
    },
  },
}
