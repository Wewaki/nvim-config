return {

  "windwp/nvim-autopairs",

  event = "InsertEnter", -- load on entering insert mode for better startup time

  config = function()

    require("nvim-autopairs").setup({})

  end,

}

