return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- calling `setup` is optional for customization
    vim.keymap.set("n", "<C-p>", "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })
    vim.keymap.set("n", "<C-g>", "<cmd>lua require('fzf-lua').grep_project()<CR>", { silent = true })
    vim.keymap.set("n", "<C-\\>", "<cmd>lua require('fzf-lua').grep()<CR>", { silent = true })
    vim.keymap.set("n", "<C-/>", "<cmd>lua require('fzf-lua').grep_cword()<CR>", { silent = true })
    vim.keymap.set("n", "<C-.>", "<cmd>lua require('fzf-lua').resume()<CR>", { silent = true })
  end,
}
