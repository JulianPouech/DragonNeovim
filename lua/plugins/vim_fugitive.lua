return {
  'tpope/vim-fugitive',

  config = function ()
    local keymap = vim.keymap
    keymap.set('n', '<leader>Gd', ':Gvdiffsplit!<CR>', { desc = '[g]it [d]iff interactive'})
  end
}
