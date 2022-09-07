#!/bin/bash
set -euo pipefail

mkdir -p ~/.vim/plugin ~/.vim/doc ~/.vim/backups ~/.vim/undo ~/.vim/swaps
cd
wget "https://raw.githubusercontent.com/sP3n1/vimrc/master/.vimrc"

# install nerdtree
git clone --depth=1 https://github.com/preservim/nerdtree.git ~/.vim/pack/git-plugins/start/nerdtree
< /dev/tty vim -u NONE -c "helptags ~/.vim/pack/git-plugins/start/nerdtree/doc" -c q
# install vim-airline
git clone --depth=1 https://github.com/vim-airline/vim-airline ~/.vim/pack/git-plugins/start/vim-airline
< /dev/tty vim -u NONE -c "helptags ~/.vim/pack/git-plugins/start/vim-airline/doc" -c q
# install vim-fugitive
git clone --depth=1 https://tpope.io/vim/fugitive.git ~/.vim/pack/git-plugins/start/vim-fugitive
< /dev/tty vim -u NONE -c "helptags ~/.vim/pack/git-plugins/start/vim-fugitive/doc" -c q
# install vim-ale
git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.vim/pack/git-plugins/start/ale
< /dev/tty vim -u NONE -c "helptags ~/.vim/pack/git-plugins/start/vim-ale/doc" -c q

echo
echo "[+] vim is configured and ready to use \\o/"
