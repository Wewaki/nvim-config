return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  config = function()
    -- Setup nvim-notify
    require("notify").setup({
      timeout = 50,
      top_down = false,
      render = "simple", -- minimal borders
      background_colour = "NotifyBackground",
    })
    vim.notify = require("notify")
    require("noice").setup({})
    -- Make background AND border highlight groups transparent
    local transparent_highlights = {
      -- nvim-notify
      "NotifyBackground",
      "NotifyERRORBody",
      "NotifyWARNBody",
      "NotifyINFOBody",
      "NotifyDEBUGBody",
      "NotifyTRACEBody",
      -- noice backgrounds
      "NoiceCmdlinePopup",
      "NoicePopup",
      "NoicePopupmenu",
      "NoiceVirtualText",
      -- noice borders
      "NoiceCmdlinePopupBorder",
      "NoicePopupBorder",
      "NoicePopupmenuBorder",
      -- nvim-notify borders (same highlight as body for most setups)
      "NotifyERRORBorder",
      "NotifyWARNBorder",
      "NotifyINFOBorder",
      "NotifyDEBUGBorder",
      "NotifyTRACEBorder",
    }
    for _, hl in ipairs(transparent_highlights) do
      vim.api.nvim_set_hl(0, hl, { bg = "NONE", fg = "NONE" })
    end
  end,
}

