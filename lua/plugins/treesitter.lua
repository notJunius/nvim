return {
	{ "windwp/nvim-ts-autotag" },
	{
		"nvim-treesitter/nvim-treesitter",
		branch = 'master',
		lazy = false,
		build = ":TSUpdate",
		config = function()
			require 'nvim-treesitter.configs'.setup {
				ensure_installed = { "c", "html", "lua", "odin", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
				sync_install = false,
				auto_install = false,
				highlight = {
					enable = true,
					disable = function(lang, buf)
						local max_filesize = 100 * 1024 -- 100 KB
						local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
						if ok and stats and stats.size > max_filesize then
							return true
						end
					end,
					additional_vim_regex_highlighting = false,
				},
			}
			require('nvim-ts-autotag').setup({
				opts = {
					-- Defaults
					enable_close = true,     -- Auto close tags
					enable_rename = true,    -- Auto rename pairs of tags
					enable_close_on_slash = false -- Auto close on trailing </
				},
				-- Also override individual filetype configs, these take priority.
				-- Empty by default, useful if one of the "opts" global settings
				-- doesn't work well in a specific filetype
			})
		end

	}
}
