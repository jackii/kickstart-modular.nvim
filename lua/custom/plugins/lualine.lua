return {
  'nvim-lualine/lualine.nvim',
  opts = {
    -- Put proper separators and gaps between components in sections
    options = {
      icons_enabled = true,
      globalstatus = true,
      disabled_filetypes = { statusline = { "dashboard", "alpha", "starter" } },
      component_separators = '',
      section_separators = { left = '', right = '' },
    },
    sections = {
      lualine_b = { "branch" },
      lualine_c = {
        { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
        {
          "filename",
          file_status = true, -- displays file status (readonly status, modified status)
          path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
        }
      },
      lualine_x = {
        {
          "diff",
          symbols = {
            added = " ",
            modified = " ",
            removed = " ",
          },
          source = function()
            local gitsigns = vim.b.gitsigns_status_dict
            if gitsigns then
              return {
                added = gitsigns.added,
                modified = gitsigns.changed,
                removed = gitsigns.removed,
              }
            end
          end,
        },
      }
    },
    extensions = { "neo-tree", "lazy" },
  },
}
