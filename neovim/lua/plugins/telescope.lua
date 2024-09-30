return {
  {
    "nvim-telescope/telescope.nvim",
    name = "telescope",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "BurntSushi/ripgrep", -- need to install binary on system
      "sharkdp/fd"          -- need to install binary on system
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
  },
  {
    "jemag/telescope-diff.nvim",
    dependencies = {
      { "nvim-telescope/telescope.nvim" },
    },
    opts = function()
      require("telescope").load_extension("diff")

      vim.keymap.set("n", "<leader>df",
        function()
          require("telescope").extensions.diff.diff_files(
            { hidden = true }
          )
        end,
        { desc = "Compare 2 files" }
      )

      vim.keymap.set("n", "<leader>dc",
        function()
          require("telescope").extensions.diff.diff_current(
            { hidden = true }
          )
        end,
        { desc = "Compare a file with the current file" }
      )
    end
  },
}
