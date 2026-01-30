    local lspconfig = require('lspconfig')
    local home = os.getenv('HOME')
    local fullPath = home..'/.local/share/nvim/mason/packages/vue-language-server/node_modules/@vue/language-server'
    vim.lsp.config('ts_ls',{
        init_options = {
          plugins = {
            {
              name = "@vue/typescript-plugin",
              location = fullPath,
              languages = {"javascript", "typescript", "vue"},
            },
          },
        },
        filetypes = {
          "javascript",
          "typescript",
          "vue",
          "html",
          "markdown"
        },
    })
    vim.lsp.config('vue_ls',{})

