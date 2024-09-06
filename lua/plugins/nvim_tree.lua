return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  
  config = function()
    require("nvim-tree").setup {}
    vim.keymap.set('n', '<leader>no', vim.cmd.NvimTreeFocus, { desc = '[N]avigate-Tree [O]pen-on-focus'})
    vim.keymap.set('n', '<leader>nt', vim.cmd.NvimTreeToggle, { desc = '[N]avigate-Tree [T]oggle'})
  end,
}
