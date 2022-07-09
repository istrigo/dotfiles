
local map = require("core.utils").map

map("n", "<leader>c", ":!compiler % <CR>", {noremap = true})
map("n", "<leader>q", ":q <CR>")
