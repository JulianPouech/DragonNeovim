# lsp configuration
you can change lsp keyboard in
`lua/plugins/mason/lsp_config.lua`
## how to config language server
### there is 3 option
* 1 add directly in `lua/plugins/mason/lsp_config.lua` on bottom
* 2 modular mode
* 3 add files with all your language server configuration

### modular option
#### 1 create lua your lsp configuration file in 

`cp lua/plugins/lsp_config/example_lsp_config.lua lua/plugins/lsp_config/yourLanguageServerName.lua`

#### 2 edit `lua/plugins/lsp_config/enable.lua` add the flowing line in function `load`

`require('plugins.lsp_config.yourLanguageServerName').setup(onAttach,capability)`

#### check if `require('plugins/lsp_config/enable')` is uncomment else uncomment

### add files with all your language server configuration

#### 1 modify file in `lua/plugins/lsp_config/enable.lua` add your configuration

#### check if `require('plugins/lsp_config/enable')` is uncomment else uncomment
