return {
  "ggandor/leap.nvim",
  enabled = true,
  keys = {
    { "s", mode = { "n", "x", "o" }, desc = "Leap Forward to" },
    { "S", mode = { "n", "x", "o" }, desc = "Leap Backward to" },
    { "gs", mode = { "n", "x", "o" }, desc = "Leap from Windows" },
  },
  config = function(_, opts)
    local leap = require("leap")
    for k, v in pairs(opts) do
      leap.opts[k] = v
    end
    leap.add_default_mappings(true)
    leap.opts.case_sensitive = true
    leap.opts.preview_filter =
      function (ch0, ch1, ch2)
        return not (
          ch1:match('%s') or
          ch0:match('%a') and ch1:match('%a') and ch2:match('%a')
        )
      end
    vim.api.nvim_set_hl(0, 'LeapBackdrop', { fg = '#777777' })
    vim.keymap.del({ "x", "o" }, "x")
    vim.keymap.del({ "x", "o" }, "X")
  end,
}
