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
    },
    config = function()
      -- Optional: Set up a keymap for vertical diff
      vim.keymap.set("n", "<leader>gd", ":Gvdiffsplit<CR>", { desc = "Git vertical diff" })
    end
  }
}

