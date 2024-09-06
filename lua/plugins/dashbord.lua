return{
  'nvimdev/dashboard-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons'},
  event = 'VimEnter',

  config = function()
    local dashboard = require('dashboard')
    local logo = {
        [[██████╗ ██████╗  █████╗  ██████╗  ██████╗ ███╗   ██╗    ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
        [[██╔══██╗██╔══██╗██╔══██╗██╔════╝ ██╔═══██╗████╗  ██║    ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
        [[██║  ██║██████╔╝███████║██║  ███╗██║   ██║██╔██╗ ██║    ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
        [[██║  ██║██╔══██╗██╔══██║██║   ██║██║   ██║██║╚██╗██║    ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
        [[██████╔╝██║  ██║██║  ██║╚██████╔╝╚██████╔╝██║ ╚████║    ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
        [[╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝    ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
    }

    dashboard.setup({
      theme = 'hyper',
      config = {
        header = logo,
        shortcut = {
          { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
          { desc = ' Open nav tree', group = '@property', action = 'NvimTreeFocus', key = 'd' },
          { desc = ' Themes', group = '@property', action = 'Telescope colorscheme', key = 't' },
          { desc = '󱌣 Mason', group = '@property', action = 'Mason', key = 'm' },
          { desc = ' Find files', group = '@property', action = 'Telescope find_files', key = 'f' },
          { desc = ' Julian Pouech' },
        },
        footer = {' Sharp tools make good work'}
     },
    })
  end
}
