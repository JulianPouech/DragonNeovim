Write-Host "installing dragonNeovim"
mkdir "~\AppData\Local\nvim"
Copy-Item -Path ".\lua" -Destination "~\AppData\Local\nvim" -Recurse
Copy-Item -Path ".\init.lua" -Destination "~\AppData\Local\nvim" -Recurse
Write-Host "lua installed"
Write-Host "installing .vimrc"
echo installing .vimrc
Copy-Item -Path ".\.vimrc" -Destination "~\.vimrc"
Write-Host "done"
