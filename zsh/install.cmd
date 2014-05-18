@echo off
set install_script_dir=%~dp0
set zsh_dir=%USERPROFILE%\.zsh
set dotfiles=zprofile zshenv zshrc zlogin zlogout

mklink /J %zsh_dir% %install_script_dir%
for %%f in (%dotfiles%) do mklink %USERPROFILE%\.%%f %zsh_dir%\%%f
