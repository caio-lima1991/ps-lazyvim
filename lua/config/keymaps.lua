local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

map("n", "H", "H", opt) -- Normal mode
map("v", "H", "H", opt) -- Visual mode
map("s", "H", "H", opt) -- Select mode

map("n", "L", "L", opt) -- Normal mode
map("v", "L", "L", opt) -- Visual mode
map("s", "L", "L", opt) -- Select mode

return {}
