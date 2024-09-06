let mapleader = " "
noremap <leader>Du :!docker compose up -d && docker ps <CR>
noremap <leader>Dd :!docker compose down <CR>
noremap <leader>Dp :!docker ps <CR>
noremap <leader>Gl :!git log --graph <CR>
noremap <leader>Gi :!git init <CR>
noremap <leader>Gp :!git push <CR>
noremap <leader>Gc :!git commit -m "
noremap <leader>Ga :!git add . && git status <CR>
set expandtab
set tabstop=2
set shiftwidth=2
if has('ide')
  " mappings and options that exist only in IdeaVim
  map <leader>f <Action>(GotoFile)
  map <leader>g <Action>(FindInPath)
  map <leader>b <Action>(Switcher)
  if &ide =~? 'intellij idea'
    if &ide =~? 'community'
      " some mappings and options for IntelliJ IDEA Community Edition
    elseif &ide =~? 'ultimate'
      " some mappings and options for IntelliJ IDEA Ultimate Edition
    endif
  elseif &ide =~? 'pycharm'
    " PyCharm specific mappings and options
  endif
else
  set number
  set clipboard=unnamedplus
endif
