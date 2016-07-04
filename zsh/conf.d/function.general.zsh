function source_if_exist {
  [[ -f "$1" ]] && source "$1"
}

function get_value_of_key() {
    local file="$1"
    local key=$2
    local delimiter=$3
    if [ -n "$file" -a -f "$file" -a -n "$key" -a -n "$delimiter" ]; then
        grep -h "${key}${delimiter}" $file | awk -F"$delimiter" '{print $2;}'
    fi
}

function is_executable() {
    (($+commands[$1]))
}

function is_exist_func() {
    (($+functions[$1]))
}

function get_executable() {
    is_executable "$1" && echo "$1" || return
}

function get_executable_first() {
    while [[ -n "$1" ]]; do
        get_executable "$1" && return
        shift
    done
    return 1
}

function get_exist_path_first() {
    while [[ -n "$1" ]]; do
        [[ -e "$1" ]] && echo "$1" && return
        shift
    done
    return 1
}

function abs_path() {
    (cd -P -- "$(dirname -- "$1")" && echo "$(pwd -P)/$(basename -- "$1")")
}

function home_or_basename() {
    case "$1" in
        $HOME) echo '~';;
        *) echo $(basename $1) ;;
    esac
}

function get_ssh_client_ip() {
    echo $SSH_CLIENT | awk '{print $1}'
}

function add_manpath() {
    [[ -e "$1" ]] &&
        manpath=($manpath "$1")
}
