return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim' 
  },
  config = function()
    _G.builtin = require('telescope.builtin')
  end
}
