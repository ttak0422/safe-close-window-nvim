local M = {}
local utils = require("safe-close-window.utils")

M.opts = {}
M.default_opts = {
	on_close_last_window = function() end,
}

function M.setup(opts)
	M.opts = vim.tbl_deep_extend("force", M.default_opts, opts or {})

	require("safe-close-window.commands")
end

function M.safe_close_window()
	local win_cnt = utils.get_window_count()
	if win_cnt > 1 then
		vim.cmd([[wincmd q]])
	else
		M.opts.on_close_last_window()
	end
end

return M
