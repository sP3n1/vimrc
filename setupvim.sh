#!/bin/bash
set -e
mkdir ~/.vim ~/.vim/plugin ~/.vim/doc ~/.vim/backups ~/.vim/undo ~/.vim/swaps
cd
wget "https://raw.githubusercontent.com/sP3n1/vimrc/master/.vimrc"
cd ~/.vim
wget "https://www.vim.org/scripts/download_script.php?src_id=23731" -O nerdtree.zip
unzip nerdtree.zip
rm nerdtree.zip
echo
echo "[+] vim is configured and ready to use \\o/"
