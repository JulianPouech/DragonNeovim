-- plugins/telescope.lua:
return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',

  dependencies = { 'nvim-lua/plenary.nvim' },

  config = function()
    local builtin = require('telescope.builtin')
    local keymap = vim.keymap
    keymap.set('n','<leader>sf',builtin.find_files, { desc= '[s]earch [f]ile'})
    keymap.set('n','<leader>sg',builtin.live_grep, { desc= '[s]earch [g]rep'})
    keymap.set('n','<leader>sk',builtin.keymaps, { desc= '[s]earch [k]eymaps'})
    keymap.set('n','<leader>sd',builtin.diagnostics, { desc= '[s]earch [d]iagnostic'})
    keymap.set('n','<leader>s<space>',builtin.buffers, { desc= '[s]earch [ ] buffers'})
    keymap.set('n','<leader>st',builtin.colorscheme, { desc= '[s]earch [t]heme'})
	end
}
