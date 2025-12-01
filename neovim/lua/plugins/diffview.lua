return {
  "sindrets/diffview.nvim",
  name = "diffview",
  opts = function()
		vim.keymap.set("n", "\\cv", ":DiffviewOpen<cr>", {})
  end,
}
