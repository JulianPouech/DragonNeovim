return {
  "mfussenegger/nvim-lint",
  dependencies = {
   "rshkarin/mason-nvim-lint",
  },

  events = {
    "BufReadPre",
    "BufNewFile",
  },

  config = function ()
    require("mason-nvim-lint").setup({
      ensure_installed = {},
      automatic_installation = true,
    })
    require('lint').linters_by_ft = {
      yaml = {'cspell'},
      cpp = {'cspell'},
      c = {'cspell'},
      h = {'cspell'},
      javascript = {'cspell'},
      txt = {'cspell'},
      php = {'cspell'},
      python = {'cspell'},
      html = {'cspell'},
      css = {'cspell'},
      scss = {'cspell'},
      lua = {'cspell'},
      twig = {'cspell'},
      sql = {'cspell'},
      markdown = {'cspell'},
    }

    local lintAuGroup = vim.api.nvim_create_augroup("lint", { clear = true })
    local lint = require("lint")
    vim.api.nvim_create_autocmd({ "BufWritePost","InsertLeave"}, {

      callback = function()
        group = lintAuGroup
        -- try_lint without arguments runs the linters defined in `linters_by_ft`
        -- for the current filetype
        lint.try_lint()
      end
    })

    vim.keymap.set('n',
      '<leader>lc',
      function ()
        lint.try_lint()
      end,
      { desc = '[l]int [c]heck'}
    )

  end
}
