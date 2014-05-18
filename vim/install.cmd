@echo off
set install_script_dir=%~dp0
set vim_dir=%USERPROFILE%\.vim
set dotfiles=vimrc gvimrc vimrc.shadow
set vim_dir_files=autoload doc ftplugin indent plugin spell syntax templates

mkdir %vim_dir%
mkdir %vim_dir%\backup
mkdir %vim_dir%\bundle
mkdir %vim_dir%\undo

for %%f in (%dotfiles%) do mklink %USERPROFILE%\.%%f %install_script_dir%\%%f
for %%f in (%vim_dir_files%) do mklink %vim_dir%\%%f %install_script_dir%\%%f
