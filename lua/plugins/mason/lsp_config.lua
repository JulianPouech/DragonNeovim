return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    'hrsh7th/cmp-nvim-lsp',
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
  },

  config = function()
    local mason_lspconfig = require('mason-lspconfig')
    local cmpNvimLsp = require('cmp_nvim_lsp')
    local lspconfig = require('lspconfig')

    mason_lspconfig.setup({
      ensure_installed = { "lua_ls" },
      automatic_installation = true,
    })

    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics, {
        -- Enable underline, use default values
        underline = true,
        -- Enable virtual text, override spacing to 4
        virtual_text = {
          spacing = 4,
        },
        -- Use a function to dynamically turn signs off
        -- and on, using buffer local variables
        -- Disable a feature
        update_in_insert = true,
      }
    )

    --config maping lsp
    local lsp = vim.lsp
    local keymap = vim.keymap
    local builtin = require('telescope.builtin')
    local opts = { noremap = true, slient = true}

    local onAttach = function (client,bufnr)
      opts.buffer = bufnr
      keymap.set('n', 'gd', builtin.lsp_definitions ,{ desc = 'LSP: [g]oto [d]efinition '})
      keymap.set('n', 'gr', builtin.lsp_references ,{ desc = 'LSP: [g]oto [r]eferences'})
      keymap.set('n', 'gI', builtin.lsp_implementations, { desc = 'LSP: [g]oto [I]mplementation '})
      keymap.set('n', '<leader>ltd', builtin.lsp_type_definitions, { desc = '[l]SP: [t]ype [d]efinition '})
      keymap.set('n', 'ds', builtin.lsp_document_symbols, { desc = 'LSP: [d]ocument [s]ymbols '})
      keymap.set('n', 'ws', builtin.lsp_dynamic_workspace_symbols, { desc = 'LSP: [w]orkspace [s]ymbols'})
      keymap.set('n', '<leader>rn', lsp.buf.rename, { desc = 'LSP: [r]e[n]ame '})
      keymap.set('n', '<leader>ca', lsp.buf.code_action, { desc = 'LSP: [c]ode [a]ction '})
      keymap.set('n', 'K', lsp.buf.hover, { desc = 'LSP: Hover '})
      keymap.set('n', 'gD', lsp.buf.declaration, { desc = 'LSP: [g]oto [D]eclaration '})
      --keymap.set('n', '<leader>ic', lsp.buf.incoming_calls, { desc = 'LSP: [i]ncoming [c]alls '})
    end
    local capabilities = cmpNvimLsp.default_capabilities()

    mason_lspconfig.setup_handlers({
      function (server_name) -- default handler (optional)
        require("lspconfig")[server_name].setup {
          on_attach = onAttach,
          capabilities = capabilities
        }
      end,
    })
  end
}
