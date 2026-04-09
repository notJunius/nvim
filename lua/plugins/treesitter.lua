return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
		branch = "main",
		config = function()
			require("nvim-treesitter").setup({
				require("nvim-treesitter").install({
					"python",
					"odin",
					"c",
					"lua",
					"vim",
					"vimdoc",
					"query",
					"markdown",
					"markdown_inline",
					"cpp",
					"javascript",
					"html",
					"gdscript",
					"godot_resource",
					"gdshader",
				}),
			})
		end,
	},
}
