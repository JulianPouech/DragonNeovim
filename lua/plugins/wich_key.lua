return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = { },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },

  config = function ()
    local wk = require('which-key')
    wk.add({
      mode = { "n" },
      {"<leader>Gc", desc = "[G]it [c]ommit"},
      {"<leader>Gp", desc = "[G]it [p]ush"},
      {"<leader>Ga", desc = "[G]it [a]dd"},
      {"<leader>Gi", desc = "[G]it [i]nit"},
      {"<leader>Gl", desc = "[G]it [l]ogs"},
      {"<leader>Du", desc = "[D]ocker compose [u]p"},
      {"<leader>Dd", desc = "[D]ocker compose [d]own"},
      {"<leader>Dp", desc = "[D]ocker [p]s"},
      {"<leader>d", group="debug/diagnostic"},
      {"<leader>s", group="search"},
      {"<leader>D", group="docker"},
      {"<leader>G", group="git"},
      {"<leader>l", group="linter/lsp"},
      {"<leader>r", group="refactor"},
      {"<leader>n", group="navigate tree"},
    })
  end
}
