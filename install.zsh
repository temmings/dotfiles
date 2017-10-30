#!/usr/bin/env zsh
set -eu
local install_script_dir=$(dirname $0(:A))
local -a targets
targets=(bin .aws .config .curlrc .gemrc .gitconfig .gitignore_global .gitmessage .globalrc .ideavimrc .inputrc .mucommander .percol.d .rspec .screenrc .ssh .tmux.conf .tmux.conf.darwin .todo .w3m)

for f in $targets; do
    ln -svni $install_script_dir/$f ~/$f || true
done

ln -svni $install_script_dir/cider ~/.cider || true
