return {
  "windwp/nvim-ts-autotag",
  event = "InsertEnter",
  config = function()
    require("nvim-ts-autotag").setup({
        filetypes = {
          "html",
          "javascript",
          "css"
        }
    })
  end
}
