return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			'saghen/blink.cmp',
			{
				"folke/lazydev.nvim",
				opts = {
					library = {
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
		},
		config = function()
			local capabilities = require('blink.cmp').get_lsp_capabilities()
			vim.lsp.enable('lua_ls')
			vim.lsp.config('lua_ls', {
				capabilities = capabilities
			})
			vim.lsp.enable('pyright')
			vim.lsp.config('pyright', {
				capabilities = capabilities
			})
			vim.lsp.enable('ols')
			vim.lsp.config('ols', {
				capabilities = capabilities
			})
			vim.lsp.enable('nil_ls')
			vim.lsp.config('nil_ls', {
				capabilities = capabilities
			})
			vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})
		end,
	}
}
