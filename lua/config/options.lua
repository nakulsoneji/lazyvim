-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- fixes c++ colon indent
vim.opt.indentkeys = "0{,0},0#,!^F,o,O,e"

-- stop loading netrw, replaced with neotree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- causes cmp icons to be different sizes, most likely terminal's fault
vim.opt.pumblend = 0

-- set all to glsl because otherwise treesitter highlight will not work
vim.filetype.add({
  extension = {
    vert = "glsl",
    tesc = "glsl",
    tese = "glsl",
    frag = "glsl",
    geom = "glsl",
    comp = "glsl",
    just = "just",
  },
  filename = {
    ["justfile"] = "just",
    [".justfile"] = "just",
  },
})
