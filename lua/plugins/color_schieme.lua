return{
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    transparent = true,
  },
  config = function()
    vim.opt.termguicolors = true
    vim.cmd("colorscheme tokyonight")
    vim.cmd [[
      highlight Normal guibg=NONE ctermbg=NONE
      highlight NormalNC guibg=NONE ctermbg=NONE 
      highlight SignColumn guibg=NONE ctermbg=NONE
      highlight VertSplit guibg=NONE ctermbg=NONE
    ]]
  end,
}

