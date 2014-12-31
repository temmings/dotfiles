#!/usr/bin/env zsh
local install_script_dir=$(dirname $0(:A))
local zsh_dir=$HOME/.zsh
local -a dotfiles
dotfiles=(zprofile zshenv zshrc zlogin zlogout)

ln -svhi $install_script_dir $zsh_dir
for f in $dotfiles; do
    ln -svhi $zsh_dir/$f ~/.$f
done
