## General
- <leader> - <space>
- Ctrl-w + <arrow left> - move to the left window
- Ctrl-w + <arrow right> - move to the right window
- Ctrl-w + <arrow up> - move to the top window
- Ctrl-w + <arrow down> - move to the bottom window
- W - save, same as w
- Q - quit, same as q
- Better up/down across wrapped line
- Resize windows with Ctrl-Arrow keys
- Move line(s) with <D-Up> or <D-Down> keys
- Indenting with > or < keys

## Fuzzy file finder with fzf-lua

- Ctrl-p - open fuzzy file explorer, search by filename
- Ctrl-\ - live grep prompt - grep any string and display a list of files for further filtering
- Ctrl-g - grep project - live grep of any keyword
- Ctrl-/ - grep keyword under the cursor

## Neo-tree

### Global
- <leader>n - open file explorer
- <leader>b - open buffer explorer
- <leader>g - open git status explorer
- <leader>r - reveal file path on neo-tree of current buffer

### Window
- Y - copy file's full path
- Smaller width at 30 (default is 40)
- Disabling the <space> mapping to open node because it is slow. Use <cr> to achieve the same behaviour

### Follow current file
- Does not follow and highlight current file/buffer on neo-tree
- :Neotree reveal / <leader>r - To follow the current buffer

## nvim-treesitter-context
Show a sticky of current block on top

## gitsigns
- Show git blame of current line
``
## indent-blank-line
- Use special character "│"
- Excludes certain file types

## lualine
### options
- Enable icons
- Global status - so that it will span across the whole window, include the neo-trees panel
- Enable extension for "neo-tree" and "lazy"
- Show relative filepath
- Show git status of current file
- Add slanted edge as separator
- Show only branch on `lualine_b`

## Supermaven AI autocomplete
- Autocomplete with AI

## leap.nvim
- Leap forward/backward

##### Unsure about the following

## nvim-cmp - auto-complete
- Sources of completion are: snippets (LuaSnip), LSP, path and buffer.
- Ghost text for autocomplete
- <Tab> - go to the next item
- <C-Space> - will trigger auto-complete (if it doesn't show up)
- <CR> - select the item
- <Up>/<Down> - use <Up>/<Down> arrow to move through the selection list

## cmp_buffer - nvim-cmp source for buffer
- Buffer completion comes from all buffers (visible and invisible)
- Sort according to distance from cursor line. https://github.com/hrsh7th/cmp-buffer?tab=readme-ov-file#locality-bonus-comparator-distance-based-sorting

