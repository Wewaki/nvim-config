return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = {
        "lua",
        "html",
        "css",
        "javascript",
        "python",
        "json",
        "bash",
      },
      highlight = { 
        enable = true
      },
      indent = { 
        enable = true
      }
    }
  end
}
