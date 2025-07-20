-- Quit (leader+q)
vim.api.nvim_set_keymap(
  'n', '<leader>q',  ':q<CR>', { noremap = true, silent = true }
)
-- open side Neotree (leader + n)
vim.keymap.set(
  'n', '<leader>n', '<Esc>:Neotree filesystem reveal right<CR>', { noremap = true, silent = true }
)
-- Close buffer leader w
vim.keymap.set(
  'n', '<leader>w', ':bd<CR>', { noremap = true, silent = true }
)
-- Save file in insert mode (leader + s)
vim.keymap.set(
  "n", "<leader>s", "<Esc>:w<CR>", { noremap = true, silent = true }
)
 -- to normal mode in insert and visual mode(jk)
vim.api.nvim_set_keymap(
  "i", "jk", "<Esc>", { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "v", "jk", "<Esc>", { noremap = true, silent = true }
)
-- telescope 
vim.keymap.set(
  'n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' }
)
vim.keymap.set(
  'n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' }
)
vim.keymap.set(
  'n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' }
)
vim.keymap.set(
  'n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' }
)
-- telescope 
-- open color picker insert mode (cp)
vim.api.nvim_set_keymap(
  'i', 'cp', '<Esc>:ColorPickerInsert<CR>', { noremap = true, silent = true } 
)
-- Completely disable arrow keys in all modes
local keys = { 
  "<Up>",
  "<Down>",
  "<Left>",
  "<Right>" 
}
local modes = { 
  "n",
  "i",
  "v",
  "x",
  "o",
  "c",
  "s",
  "t" 
}
for _, mode in ipairs(modes) do
  for _, key in ipairs(keys) do
    vim.keymap.set( mode, key, "<NOP>", { noremap = true, silent = true })
  end
end

-- Navigate vim panes better
vim.keymap.set(
  'n', '<A-k>', ':wincmd k<CR>', { noremap = true, silent = true }
)
vim.keymap.set(
  'n', '<A-j>', ':wincmd j<CR>', { noremap = true, silent = true }
)
vim.keymap.set(
  'n', '<A-h>', ':wincmd h<CR>', { noremap = true, silent = true }
)
vim.keymap.set(
  'n', '<A-l>', ':wincmd l<CR>', { noremap = true, silent = true }
)
-- Map jk in terminal mode to exit to normal mode
vim.api.nvim_set_keymap(
  't', 'jk', [[<C-\><C-n>]], { noremap = true, silent = true }
)
-- use diff v split
vim.keymap.set(
  "n", "<leader>gd", ":Gvdiffsplit<CR>", { desc = "Git Vertical Diff" }
)


