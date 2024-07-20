return {
  {
    "nvim-telescope/telescope.nvim",
    name = "telescope",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "BurntSushi/ripgrep", -- need to install binary on system
      "sharkdp/fd" -- need to install binary on system
    },
    opts = function()
      local t = require("telescope.builtin")
      vim.keymap.set("n", "<leader>n", t.find_files, {})
      vim.keymap.set("n", "<leader>g", t.live_grep, {})

      require("telescope").load_extension("ui-select")
    end,
    extensions = {
      ["ui-select"] = {
        require("telescope.themes").get_dropdown {}
      }
    }
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    name = "telescope-ui-select",
    opts = function()
      require("telescope").load_extension("ui-select")
    end
  }
}
