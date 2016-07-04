export CONSCRIPT_HOME="$HOME/.conscript"
#export CONSCRIPT_OPTS="-XX:MaxPermSize=512M -Dfile.encoding=UTF-8"
export CONSCRIPT_OPTS="-Dfile.encoding=UTF-8"
export PATH=$CONSCRIPT_HOME/bin:$PATH

function is_prepared_cs_bin() {
    [[ -e $CONSCRIPT_HOME/bin/$1 ]]
}

is_prepared_cs_bin cs || curl https://raw.githubusercontent.com/foundweekends/conscript/master/setup.sh | sh
is_prepared_cs_bin g8 || cs foundweekends/giter8
