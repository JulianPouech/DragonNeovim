# Lsp configuration
You can change lsp keyboard in
`lua/plugins/mason/lsp_config.lua`
## How to config language server
### There is 3 option
* 1 Add directly in `lua/plugins/mason/lsp_config.lua` on bottom
* 2 Modular mode
* 3 Add files with all your language server configuration

## Modular Mode
#### 1 Create lua your lsp configuration file in 

`cp lua/plugins/lsp_config/example_lsp_config.lua lua/plugins/lsp_config/yourLanguageServerName.lua`

#### 2 Edit `lua/plugins/lsp_config/enable.lua` add the flowing line in function `load`

`require('plugins.lsp_config.yourLanguageServerName').setup(onAttach,capability)`

Check if `require('plugins/lsp_config/enable')` is uncomment else uncomment

## Add files with all your language server configuration

#### 1 Modify file in `lua/plugins/lsp_config/enable.lua` add your configuration

Check if `require('plugins/lsp_config/enable')` is uncomment else uncomment
