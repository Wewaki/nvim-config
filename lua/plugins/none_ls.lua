return{

    "nvimtools/none-ls.nvim",

    event = { 
      "BufReadPre",
      "BufNewFile"
    },

    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()

      local null_ls = require("null-ls")

      null_ls.setup({

        sources = {
          -- Prettier formatter
          null_ls.builtins.formatting.prettier.with({

            command = "prettier", -- assumes it's in your PATH

            filetypes = {

              "javascript",
              "typescript",
              "html",
              "css",
              "html",
              "json",

            },

          }),
        
        },

        on_attach = function(client, bufnr)

          if client.supports_method("textDocument/formatting") then
            -- Define :Format command to format the buffer
          
            vim.api.nvim_buf_create_user_command(bufnr, "Format", function()
              vim.lsp.buf.format({ bufnr = bufnr })
            end,

            { desc = "Format current buffer with LSP" })

          end

        end,

      })

    end,
 
}

