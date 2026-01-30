vim.cmd.colorscheme 'catppuccin'
require("catppuccin").setup({
    flavour = "macchiato", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
    },

    transparent_background = false;
})
vim.keymap.set('n', 'ta',function (toggle)
    toggle = not toggle
    require("catppuccin").setup({
        transparent_background = toggle
    })
end)
