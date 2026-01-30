return {
    setup = function(onAttach,capabilities)
    local lspconfig = require('lspconfig')
    lspconfig.html.setup{
        on_attach  = onAttach,
        capabilities = capabilities,
        filetypes = {
          "javascript",
          "typescript",
          "vue",
          "html",
          "twig",
        },
    }
    end
}

