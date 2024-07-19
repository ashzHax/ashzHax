return {
  "nvim-neo-tree/neo-tree.nvim",
  name = "neo-tree",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim"
  },
  opts = function()
    vim.keymap.set("n", "<leader>N", ":Neotree toggle<cr>")
  end
}
