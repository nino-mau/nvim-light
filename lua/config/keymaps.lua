-- Keymaps are automatically loaded on the VeryLazy event
-- Minimal essential keymaps only

local map = vim.keymap.set
local ls = require("luasnip")

-- Copy entire buffer to clipboard
map("n", "<C-c>", ":%y<CR>", { noremap = true, silent = true, desc = "Copy entire buffer" })

-- Select entire buffer
map({ "n", "v" }, "<leader>ba", "ggVG", { desc = "Select entire buffer" })

-- Buffer navigation
map("n", "<Tab>", "<cmd>bnext<CR>", { desc = "Next buffer" })
map("n", "<S-Tab>", "<cmd>bprevious<CR>", { desc = "Previous buffer" })

-- Word operations
map("n", "yw", "yiw", { desc = "Copy word under cursor" })
map("n", "cw", "ciw", { desc = "Edit word under cursor" })

-- Remap luansip key to jump between snippets node
map({ "i", "s" }, "<C-D>", function()
	ls.jump(1)
end, { silent = true })
map({ "i", "s" }, "<C-G>", function()
	ls.jump(-1)
end, { silent = true })

-- Expand lua snippet
map({ "i", "s" }, "<C-j>", function()
	if ls.expandable() then
		ls.expand()
	end
end, { silent = true })
