return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'rcarriga/nvim-dap-ui',
    'jay-babu/mason-nvim-dap.nvim',
  },

  config = function ()
    local masonNivmDap = require('mason-nvim-dap')
    local dap = require('dap')
    local dapUi = require('dapui')
    dapUi.setup()
    -- link with mason
    masonNivmDap.setup({
      ensure_installed = {},
      handlers = {
          function(config)
            -- all sources with no handler get passed here

            -- Keep original functionality
            masonNivmDap.default_setup(config)
          end,
      }
    })

    dap.listeners.before.attach.dapUi_config = function()
      dapUi.open()
    end
    dap.listeners.before.launch.dapUi_config = function()
      dapUi.open()
    end
    dap.listeners.before.event_terminated.dapUi_config = function()
      dapUi.close()
    end
    dap.listeners.before.event_exited.dapUi_config = function()
      dapUi.close()
    end
    --setup key mapping
    local keymap = vim.keymap
    keymap.set('n', 'bp', vim.cmd.DapToggleBreakpoint, { desc = '[b]reak [p]oint'})
    keymap.set('n', '<leader>dc', vim.cmd.DapContinue, { desc = '[d]ebug [c]ontinue'})
    keymap.set('n', '<leader>ds', vim.cmd.DapStepInto, { desc = '[d]ebug [s]tep'})
  end
}
