return{
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",       -- LSP source for nvim-cmp
      "hrsh7th/cmp-buffer",         -- Buffer completion
      "hrsh7th/cmp-path",           -- Path completion
      "hrsh7th/cmp-cmdline",        -- Cmdline completion
      "L3MON4D3/LuaSnip",           -- Snippet engine
      "saadparwaiz1/cmp_luasnip",   -- Snippet completion source
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")
      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "buffer" },
          { name = "path" },
        }),
      })
    end
}
