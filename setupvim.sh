#!/bin/bash
set -euo pipefail

mkdir -p ~/.vim/plugin ~/.vim/doc ~/.vim/backups ~/.vim/undo ~/.vim/swaps ~/.vim/tags
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
# install vim-polyglot
git clone --depth 1 https://github.com/sheerun/vim-polyglot.git ~/.vim/pack/git-plugins/start/vim-polyglot
< /dev/tty vim -u NONE -c "helptags ~/.vim/pack/git-plugins/start/vim-polyglot/doc" -c q
# For tags, install universal-ctags `sudo apt install universal-ctags` or `brew install universal-ctags`
# install vim-gutentags
git clone --depth=1 https://github.com/ludovicchabant/vim-gutentags.git ~/.vim/pack/git-plugins/start/vim-gutentags
< /dev/tty vim -u NONE -c "helptags ~/.vim/pack/git-plugins/start/vim-gutentags/doc" -c q


echo
echo "[+] vim is configured and ready to use \\o/"