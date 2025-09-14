local M = {}

local function hi(groups)
  vim.cmd("hi clear")
  for group, value in pairs(groups) do
    vim.api.nvim_set_hl(0, group, value)
  end
end

function M.setup()
  local groups = require("yoru.groups").get()
  hi(groups)
end

return M
