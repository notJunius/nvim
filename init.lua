require("config.lazy")
require("config.keybinds")
require("config.options")
local todofloat = require("todofloat")
todofloat.setup({
	target_file = "~/dev/unnamed_game/todo.md",
})
vim.opt.clipboard = "unnamedplus"

local gdproject = io.open(vim.fn.getcwd()..'/project.godot', 'r')
if gdproject then
    io.close(gdproject)
    vim.fn.serverstart './godothost'
end
