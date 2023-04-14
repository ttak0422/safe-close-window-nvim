local sc = require("safe-close-window")

vim.api.nvim_create_user_command("SafeCloseWindow", sc.safe_close_window, {})
