require('nvim_context_vt').setup({
  -- How many lines required after starting position to show virtual text
  -- Default: 1 (equals two lines total)
  min_rows = 10,

  -- Same as above but only for spesific filetypes
  -- Default: {}
  min_rows_ft = {},
})
