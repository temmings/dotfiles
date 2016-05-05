#!/usr/bin/env zsh
local install_script_dir=$(dirname $0(:A))
local vim_dir=$HOME/.vim
local -a dotfiles vim_dir_files
dotfiles=(vimrc gvimrc vimrc.shadow)
vim_dir_files=(autoload conf.d doc dict ftplugin indent plugin runtime spell syntax templates)

mkdir -p $vim_dir
mkdir -p $vim_dir/backup
mkdir -p $vim_dir/bundle
mkdir -p $vim_dir/undo

for f in $dotfiles; do
    ln -svni $install_script_dir/$f ~/.$f
done
for f in $vim_dir_files; do
    ln -svni $install_script_dir/$f $vim_dir/$f
done

git clone git://github.com/Shougo/neobundle.vim $vim_dir/bundle/neobundle.vim
