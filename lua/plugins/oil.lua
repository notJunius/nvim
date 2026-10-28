return {
  {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
		view_options = {
			is_hidden_file = function(name, bufnr)
				-- hide specific extensions like .uid
				local match = name:match("%.(%w+)$")
				if match == "uid" then
					return true
				end
				return vim.startswith(name, ".")
			end
		},

	},
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
}
}
