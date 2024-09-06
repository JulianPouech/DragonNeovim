# DragonNeovim

        ██████╗ ██████╗  █████╗  ██████╗  ██████╗ ███╗   ██╗    ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
        ██╔══██╗██╔══██╗██╔══██╗██╔════╝ ██╔═══██╗████╗  ██║    ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
        ██║  ██║██████╔╝███████║██║  ███╗██║   ██║██╔██╗ ██║    ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
        ██║  ██║██╔══██╗██╔══██║██║   ██║██║   ██║██║╚██╗██║    ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
        ██████╔╝██║  ██║██║  ██║╚██████╔╝╚██████╔╝██║ ╚████║    ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
        ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝    ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝


> [!NOTE]
> this project is beta

DragonNeovim is config neovim with mason dap lsp and lint
## how to install
`./install.sh`
## how to config themes and persist 
1. `nvim ~/.config/nvim/lua/plugins/themes/your_themes.lua`
2. `nvim ~/.config/nvim/lua/plugins/enable.lua`
3. ```lua
    --enable.lua
        require('plugins.themes.your_themes'),`
    ```
4. `nvim ~/.config/nvim/lua/theme.lua`
5. ```lua
    --theme.lua
        vim.cmd.colorscheme 'your_colorscheme'
    ```
## how to add plugin 
1. `nvim ~/.config/nvim/lua/plugins/your_plugins.lua`
2. `nvim ~/.config/nvim/lua/plugins/enable.lua`
3. ```lua 
        --enable.lua
        `require('plugins.your_plugins'),
    ```
## todo
- [ ] add windows installer
- [ ] add mac installer
- [ ] add formatter
