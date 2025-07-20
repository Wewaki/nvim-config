return {
  -- LSP Config (no Mason, fully offline)
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = {

      {
        "pmizio/typescript-tools.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
          local capabilities = require("cmp_nvim_lsp").default_capabilities()

          require("typescript-tools").setup({
            capabilities = capabilities,
            -- optional: you can add your custom settings here
            -- settings = {
            --   tsserver_plugins = {},
            -- },
          })
        end,
      },
    },

    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- HTML
      lspconfig.html.setup({
        capabilities = capabilities,
        cmd = { 
          "vscode-html-language-server",
          "--stdio" 
        },
      })

      -- CSS
      lspconfig.cssls.setup({
        capabilities = capabilities,
        cmd = { 
          "vscode-css-language-server",
          "--stdio" 
        },
      })

      -- Python
      lspconfig.pyright.setup({
        capabilities = capabilities,
        cmd = { 
          "pyright-langserver",
          "--stdio"
        },
      })

      -- Bash
      lspconfig.bashls.setup({
        capabilities = capabilities,
        cmd = { 
          "bash-language-server",
          "start"
        },
      })
    end,
  },

  {
    -- Optional: Add LuaSnip snippets (VSCode-style)
    "rafamadriz/friendly-snippets",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
}

