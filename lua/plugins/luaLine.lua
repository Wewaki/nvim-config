return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'kyazdani42/nvim-web-devicons' },
  config = function()
   vim.opt.termguicolors = true

    require('lualine').setup {

      options = {
        theme = tokyoinght,
        component_separators = '|',
        section_separators = { left = '█', right = '█' },
      },

       sections = {

        --lualine_a = {},
        
        --lualine_b = {},

        lualine_c = {},

        lualine_x = {},
        
        --lualine_y = {},

        lualine_z = {'filename'}
     },
       
    }
  end,
}

