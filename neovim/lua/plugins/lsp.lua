return {
  {
    "williamboman/mason.nvim",
    name = "mason",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
  },
  config = function()
    require("mason").setup({
      PATH = "prepend",
    })
  end,
  {
    "williamboman/mason-lspconfig.nvim",
    name = "mason-lspconfig",
    dependencies = {
      "williamboman/mason-lspconfig.nvim"
    },
    opts = {
      ensure_installed = {
        "lua_ls",
        "clangd",
        "eslint",
        "gopls",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    name = "lspconfig",
    -- Bad way to setup a plugin, but lspconfig will break otherwise
    config = function()
      local c = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- load LSP
      c.lua_ls.setup({ capabilities = capabilities })
      c.clangd.setup({ capabilities = capabilities })
      c.eslint.setup({ capabilities = capabilities })
      c.gopls.setup({ capabilities = capabilities })

      -- keymaps
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
