return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
      "hrsh7th/cmp-cmdline",
    },
    event = { "CmdlineEnter", "InsertEnter" },
    opts = function(_, opts)
      local cmp = require("cmp")

      -- opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "emoji" } }))

      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          {
            name = "cmdline",
            option = {
              ignore_cmds = { "Man", "!" },
            },
          },
        }),
      })

      cmp.setup.cmdline("/", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })

      opts.window = {
        completion = {
          --border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
          winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder,CursorLine:PmenuSel",
        },

        documentation = {
          --border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
          winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
        },
      }

      opts.formatting.format = function(_, item)
        local icons = require("lazyvim.config").icons.kinds

        local max_width = 25
        local fixed_width = true
        local ellipsis_char = "..."

        item.menu = ""

        if icons[item.kind] then
          item.kind = icons[item.kind] .. item.kind
        end

        local label = item.abbr:gsub("%s+", "")
        if string.len(label) > max_width then
          item.abbr = string.sub(label, 0, max_width - string.len(ellipsis_char)) .. ellipsis_char
        elseif string.len(label) < max_width and fixed_width then
          item.abbr = label .. string.rep(" ", max_width - string.len(label))
        else
          item.abbr = label
        end

        return item
      end
    end,
  },
}
