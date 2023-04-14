local M = {}

--- get window count.
---@return number
function M.get_window_count()
	local cnt = 0

	for i = 1, vim.fn.winnr("$") do
		local win_cfg = vim.api.nvim_win_get_config(vim.fn.win_getid(i))
		if win_cfg.focusable then
			cnt = cnt + 1
		end
	end

	return cnt
end

return M
