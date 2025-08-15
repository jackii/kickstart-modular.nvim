-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- [[ custom keymaps ]]
-- My own custom keymaps
-- 2025-06-08 02:35 Initial commit
-- Disabled diagnostic keymaps (line 9)

--
vim.cmd 'silent! command! WQ wq'
vim.cmd 'silent! command! Wq wq'
vim.cmd 'silent! command! Q q'
vim.cmd 'silent! command! W w'

-- Better up/down with wrapped line
vim.keymap.set({ 'n', 'x' }, 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set({ 'n', 'x' }, '<Down>', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set({ 'n', 'x' }, 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set({ 'n', 'x' }, '<Up>', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Resize window using <ctrl> arrow keys
vim.keymap.set('n', '<C-Up>', '<cmd>resize +2<cr>', { desc = 'Decrease window height' })
vim.keymap.set('n', '<C-Down>', '<cmd>resize -2<cr>', { desc = 'Decrease window height' })
vim.keymap.set('n', '<C-Left>', '<cmd>vertical resize -2<cr>', { desc = 'Decrease window width' })
vim.keymap.set('n', '<C-Right>', '<cmd>vertical resize +2<cr>', { desc = 'Increase window width' })

-- better indenting
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- To use the <CMD> or the <super> key, there must ba a corresponding mapping
-- in the kitty.conf. See the kitty.conf for combination of modifier keys that
-- have been mapped.
-- map super+up send_text all \x1b[1;9A
-- map super+down send_text all \x1b[1;9B
-- map super+right send_text all \x1b[1;9C
-- map super+left send_text all \x1b[1;9D
-- map super+enter send_text all \x1b[13;9u
--
-- Also check
-- :help map-meta-keys
-- :help map-super-keys

-- Move to window using the <cmd> arrow keys
-- vim.keymap.set("n", "<D-Up>", "<C-w>k")
-- vim.keymap.set("n", "<D-Down>", "<C-w>j")
-- vim.keymap.set("n", "<D-Left>", "<C-w>h")
-- vim.keymap.set("n", "<D-Right>", "<C-w>l")

-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua#L26
-- Move lines with Command-Up or Command-Down
vim.keymap.set('n', '<D-Down>', '<cmd>m .+1<cr>==', { desc = 'Move down' })
vim.keymap.set('n', '<D-Up>', '<cmd>m .-2<cr>==', { desc = 'Move up' })
vim.keymap.set('i', '<D-Down>', '<esc><cmd>m .+1<cr>==gi', { desc = 'Move down' })
vim.keymap.set('i', '<D-Up>', '<esc><cmd>m .-2<cr>==gi', { desc = 'Move up' })
vim.keymap.set('v', '<D-Up>', ":m '<-2<cr>gv=gv", { desc = 'Move up' })
vim.keymap.set('v', '<D-Down>', ":m '>+1<cr>gv=gv", { desc = 'Move down' })

-- vim: ts=2 sts=2 sw=2 et
