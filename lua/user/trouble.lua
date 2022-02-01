local api = vim.api
api.nvim_set_keymap("n", "<C-j>", "<cmd>lua require('trouble').next({skip_groups = true, jump = true})<CR>", { noremap = true, silent = true })
api.nvim_set_keymap("n", "<C-k>", "<cmd>lua require('trouble').previous({skip_groups = true, jump = true})<CR>", { noremap = true, silent = true })

local M = {}

local function magiclines(s)
  if s:sub(-1)~="\n" then s=s.."\n" end
  return s:gmatch("(.-)\n")
end

M.typescript_workspace_check = function()
	local output = io.popen("npx tsc --noEmit")
	local errors = output:read("*a")

  for line in magiclines(errors) do
    local beg = string.find(line, "%(")
    local path = string.sub(line, 0, beg - 1)
    vim.api.nvim_command("e " .. path)
  end

	output:close()
  vim.api.nvim_command("Trouble workspace_diagnostics")
end


M.pick = function()
  vim.api.nvim_command('e client/components/student-theme-picker/index.tsx')
end

return M
