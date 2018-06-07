### http://qiita.com/mollifier/items/160a13a95e9627a55750
function 256colortest() {
    local code
    for code in {000..255}; echo -n -e "\e[38;05;${code}m $code"
}

function set_screen_caption() {
    # set program name to screen caption
    [ -n "$STY" ] && echo -ne "\ek$1\e\\"
}

function mkcdir() {
    mkdir "$@" || return $?

    local arg got_end_option=0
    for arg in "$@"; do
        case "$arg" in
            --)
                got_end_option=1
                continue
                ;;
            -*)
                ((1 == $got_end_option)) && break
                continue
                ;;
            *)
                break
                ;;
        esac
    done
    cd -- "$arg"
}

function configure_bootstrap() {
    #if which glibtoolize &>/dev/null; then
    #    glibtoolize --force
    #else
    #    libtoolize --force
    #fi
    aclocal && autoconf && autoheader && automake --add-missing --foreign
    #shtoolize all
}

function configure_for_home_local() {
    ./configure --prefix=$HOME/.local "$@"
}

function prepare_boot2docker() {
    boot2docker init
    boot2docker start
    $(boot2docker shellinit)
}

function prepare_anyenv() {
    local anyenv_dir=$HOME/.anyenv
    [[ -d $anyenv_dir ]] || git clone https://github.com/riywo/anyenv $anyenv_dir
    if [[ ! -d $anyenv_dir/plugins/anyenv-update ]]; then
        mkdir -p $anyenv_dir/plugins
        git clone https://github.com/znz/anyenv-update.git $anyenv_dir/plugins/anyenv-update
    fi
    export PATH="$anyenv_dir/bin:$PATH"
    eval "$(anyenv init -)"
    is_executable pyenv && eval "$(pyenv init -)"
}

function cdwork() {
    mkcdir -p ~/$(date '+%Y')/$(date '+%m%d')
}

function ssh-concat-config() {
    local d=$HOME/.ssh
    [[ -f $d/config ]] && mv $d/config{,.bak}
    cat $d/conf.d/*.conf > $d/config
}

function presentation-minutes-timer() {
    # $1: total minutes (default: 5 min)
    # $2: say voice (default: Samantha)
    local mins=${1:-5}
    local say_yes(){ say -v ${2:-Samantha} $1 }
    local sleep_annoy() {
        for i in {1..60}; (sleep 1; echo -n .)
        echo
    }
    say_yes "let's start"
    for i in {${mins}..1}; do
        local m="least $i minutes"
        say_yes $m;
        echo $m
        sleep_annoy
    done
    say_yes 'FINISH!'
}
