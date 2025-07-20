return {
  {
    "lewis6991/gitsigns.nvim",
    event = {
      "BufReadPre",
      "BufNewFile"
    },
    config = function()
      require("gitsigns").setup()
    end
  },
  {
    "tpope/vim-fugitive",
    cmd = {
      "Git",
      "G",
      "Gvdiffsplit",  -- vertical split command
      "Gwrite",
      "Gread",
      "Glog",
      "Ggrep",
      "GMove",
      "GRemove"
    }
    
  }
}

