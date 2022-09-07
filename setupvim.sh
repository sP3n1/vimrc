#!/bin/bash
set -euo pipefail

mkdir -p ~/.vim/plugin ~/.vim/doc ~/.vim/backups ~/.vim/undo ~/.vim/swaps
cd
wget "https://raw.githubusercontent.com/sP3n1/vimrc/master/.vimrc"

# install nerdtree
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q
# install vim-airline
git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/vendor/start/vim-airline
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/vim-airline/doc" -c q
# install vim-fugitive
git clone https://tpope.io/vim/fugitive.git ~/.vim/pack/vendor/start/vim-fugitive
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/vim-fugitive/doc" -c q

echo
echo "[+] vim is configured and ready to use \\o/"
