local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g["tmux_navigator_no_mappings"] = 1

keymap("n", "<C-Up>", ":TmuxNavigateUp<CR>", opts)
keymap("n", "<C-Down>", ":TmuxNavigateDown<CR>", opts)
keymap("n", "<C-Left>", ":TmuxNavigateLeft<CR>", opts)
keymap("n", "<C-Right>", ":TmuxNavigateRight<CR>", opts)
