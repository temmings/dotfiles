### virtualenvwrapper for python virtualenv
if hash virtualenvwrapper.sh 2>/dev/null; then
    WORKON_HOME="$HOME/.virtualenvs"
    source $(which virtualenvwrapper.sh)
fi
