local api = vim.api
api.nvim_set_keymap("n", "<C-j>", "<cmd>lua require('trouble').next({skip_groups = true, jump = true})<CR>", { noremap = true, silent = true })
api.nvim_set_keymap("n", "<C-k>", "<cmd>lua require('trouble').previous({skip_groups = true, jump = true})<CR>", { noremap = true, silent = true })
