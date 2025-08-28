local utils = require("miniharp.utils")

---@class MiniharpMark
---@field file string -- absolute file path
---@field lnum integer -- 1-based line number
---@field col integer -- 0-based column

---@class MiniharpState
---@field marks MiniharpMark[]
---@field cwd string
---@field idx integer
---@field augroup? integer
---@field silent boolean

local M ---@type MiniharpState

M = {
	silent = false,
	marks = {},
	cwd = utils.norm(vim.fn.getcwd()),
	idx = 0,
	augroup = nil,
}

return M
