return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  lazy = false,
  config = function()
    -- Set transparent background for relevant highlight groups
    vim.cmd [[
      highlight NeoTreeNormal guibg=NONE ctermbg=NONE
      highlight NeoTreeNormalNC guibg=NONE ctermbg=NONE
      highlight NeoTreeEndOfBuffer guibg=NONE ctermbg=NONE
      highlight NeoTreeWinSeparator guibg=NONE ctermbg=NONE
    ]]
    -- Optional: set termguicolors if not set elsewhere
    vim.opt.termguicolors = true
  end,
}

