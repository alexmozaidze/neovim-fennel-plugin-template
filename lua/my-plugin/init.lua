local M = {}
M.setup = function()
  vim.notify("Ayo, my plugin is loaded!")
  return vim.notify("The answer to life is 42!")
end
return M
