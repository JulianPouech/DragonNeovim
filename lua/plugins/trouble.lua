return {
  "folke/trouble.nvim",
  opts = {}, -- for default options, refer to the configuration section for custom setup.
  cmd = "Trouble",
  keys = {
    {
      "<leader>dt",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "[d]iagnostics [t]rouble",
    },
  },
}
