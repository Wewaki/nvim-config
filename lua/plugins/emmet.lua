return {
  "mattn/emmet-vim",
  ft = { 
    "html",
    "htmldjango",
    "javascriptreact",
    "typescriptreact" 
  }, -- load only for web files
  config = function()
    -- Optional: You can remap the expand key if you want.
    -- By default, <C-y>, expands Emmet abbreviations.
    -- Example: map <Tab> to expand in insert mode:
    vim.cmd([[
      imap <expr> <Tab> emmet#expandAbbrIntelligent("<Tab>")
      let g:user_emmet_expandabbr_key = '<Tab>'
      let g:user_emmet_leader_key = '<C-Z>'
    ]])
  end,
}

