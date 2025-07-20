return {
    
    'MarcosTypeAP/color-picker.nvim',

    config = function()

      local picker = require('color-picker')
      local actions = require('color-picker.actions')

      picker.setup({

        defaults = {

          height = 20,
          width = 40,
          jump_v = -1,
          jump_h = -1,
          hue_char = '.',
          hue_step = 10,
          format = 'hex',

          mappings = {

            ['k'] = actions.move_up,
            ['j'] = actions.move_down,
            ['h'] = actions.move_left,
            ['l'] = actions.move_right,
            ['<A-h>'] = actions.hue_left,
            ['<A-l>'] = actions.hue_right,
            ['<CR>'] = actions.select,
            ['q'] = actions.close,

          },

       },

    })

    end
  
}
