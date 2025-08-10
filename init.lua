vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) text',
	group = vim.api.nvim_create_augroup('kikstart-highlight-yank', { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

require("config.lazy")

-- keymaps
vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", "<cmd>:.lua<CR>")
vim.keymap.set("v", "<space>x", "<cmd>:lua<CR>")
vim.keymap.set("n", "<space>w", "<cmd>:w<CR>")
vim.keymap.set("n", "<space>q", "<cmd>:q<CR>")

vim.keymap.set("n", "-", "<cmd>Oil<CR>")



vim.keymap.set("n", "<space>st", function()
	vim.cmd.vnew()
	vim.cmd.term()
	vim.cmd.wincmd("J")
	vim.api.nvim_win_set_height(0, 5)
end)

-- opts
local set = vim.opt
set.shiftwidth = 2
set.number = true
set.relativenumber = true
set.tabstop = 2
