require("config.lazy")
require("config.keybinds")
require("config.options")
local todofloat = require("todofloat")
todofloat.setup({
	target_file = "~/dev/todo-list/todo.md",
})
