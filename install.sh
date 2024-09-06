echo 'installing dragonNeovim'
mkdir ~/.config/nvim/
cp -r ./lua ~/.config/nvim/
cp ./init.lua ~/.config/nvim/
echo 'lua installed'
echo installing .vimrc
cp ./.vimrc ~/vimrc
echo done !
