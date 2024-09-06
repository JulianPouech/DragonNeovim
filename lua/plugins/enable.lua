require("lazy").setup({
  --theme
	require('plugins.themes.catppuccin'),

  --other plugins
  require('plugins.dashbord'),
	require('plugins.nvim_tree'),
	require('plugins.telescope'),
	require('plugins.wich_key'),
	require('plugins.lualine'),
	require('plugins.nvim_treesitter'),
	require('plugins.dressing'),
  require('plugins.trouble'),
  require('plugins.nvim-notify'),

  --git implementation
  require('plugins.vim_fugitive'),
  require('plugins.lazygit'),

  --mason
  require('plugins.mason.mason'),
  require('plugins.mason.lsp_config'),

  --autocomplete
  require('plugins.mason.nvim_cmp'),

  --debuger
  require('plugins.mason.nvim_dap'),

  --linter
  require('plugins.mason.nvim_lint'),
})
