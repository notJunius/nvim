return {
	"windwp/nvim-ts-autotag",
	ft = { "html", "javascript", "typescript", "jsx", "tsx", "vue", "svelte" }, -- File types to enable
	config = function()
		require("nvim-ts-autotag").setup({
			-- Optional: you can add specific configurations here
			-- such as disabling for certain filetypes or setting specific patterns
		})
	end,
}
