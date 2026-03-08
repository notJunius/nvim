vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("n", "<space>w", "<cmd>w<CR>")
vim.keymap.set("n", "<space>q", "<cmd>q!<CR>")
vim.keymap.set("n", "<space>t", "<cmd>Td<CR>")
vim.keymap.set("n", "-", "<cmd>Oil<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>")

local function run_current_file()
	local file_type = vim.bo.filetype
	local file_name = vim.fn.expand("%")
	local output_name = vim.fn.expand("%:r") --removes .filetype at end of file name

	if file_type == "cpp" then
		vim.cmd("split | term g++ " .. file_name .. " -o " .. output_name .. " && ./" .. output_name)
	elseif file_type == "javascript" then
		vim.cmd("split | term echo 'live-server for webhosting' && node " .. file_name)
	elseif file_type == "odin" then
		vim.cmd("split | term odin run .")
	elseif file_type == "python" then
		vim.cmd("split | term uv run " .. file_name)
	else
		print("No run command defined for filetype: " .. file_type)
	end
end

-- Map <Leader>p to the function
vim.keymap.set("n", "<leader>p", run_current_file, { desc = "Run current file based on type" })
