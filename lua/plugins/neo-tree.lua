return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    --apparantly the code below previews images look into this more later
    --{"3rd/image.nvim", opts = {}},
  },
  config = function()
    vim.keymap.set('n', '<leader>n', ':Neotree filesystem reveal right<CR>')
    vim.keymap.set('n', '<leader>N', ':Neotree filesystem close<CR>')
  end
}
