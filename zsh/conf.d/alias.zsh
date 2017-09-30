alias ll="ls -l"
alias lf="ls -F"
alias la="ls -A"
alias clear2="echo -e '\026\033c'"
alias ssh="ssh-concat-config; ssh"
alias scp="ssh-concat-config; scp"
alias sftp="ssh-concat-config; sftp"
alias svstatall="sudo svstat /var/service/*"
if is_executable w3mman; then
    alias man="w3mman"
    alias run-help="w3mman"
fi
if is_executable vim; then
    alias vi="vim"
fi

# command on tmux panel
alias t="tmux split-window -v"
alias tb="tmux split-window -bdv"
alias th="tmux split-window -h"
alias tp="tmux new-window"

alias cdg='cd -g'
alias cdG='cd -G'
# see: http://qiita.com/itkrt2y/items/0671d1f48e66f21241e2
peco_cmd=$(get_executable_first fzf peco percol)
alias gh='(){ hub browse $(ghq list | '$peco_cmd' --query "$*" | cut -d "/" -f 2,3) }'

alias vinarise="vim -c Vinarise"

alias git-init="git init && git add -A && git commit -m 'Initialize repository'"

alias grep_nm_func_names="grep ' T _' | sed 's/.* T _//'"

alias show_my_ipv4="telnet ipv4.test-ipv6.com 79"
alias show_my_ipv6="telnet ipv6.test-ipv6.com 79"
alias show_my_external_ip="curl 'http://whatismyip.akamai.com'"

alias show_ec2_local_ipv4="curl -s 'http://169.254.169.254/latest/meta-data/local-ipv4'"
alias show_ec2_public_ipv4="curl -s 'http://169.254.169.254/latest/meta-data/public-ipv4'"

alias show-fingerprint="ssh-keygen -E md5 -lf"
alias ssl-x509-detail="openssl x509 -text -noout -in"
alias ssl-rsa-detail="openssl rsa -text -noout -in"
alias ssl-csr-detail="openssl req -text -noout -in"
alias ssl-pfx-detail='(){ openssl pkcs12 -clcerts -nokeys -in $1 | openssl x509 -text -noout }'
alias ssl-show-https='(){ openssl s_client -connect $1:443 -showcerts }'
alias urlencode="nkf -WwMQ | tr = %"
alias urldecode="nkf -w --url-input"

alias sum-col='(){ awk "{s+=\$${1:-1}}END{print s}" }'

alias -s exe="wine"
alias -s htm="w3m"
alias -s html="w3m"
alias -s shtml="w3m"
alias -s phar="php -f"
alias -s php="php -f"
alias -s pl="perl"
alias -s py="python"
alias -s rb="ruby"
# shbang に -eu とか指定されてても効かなくなるのでやめた
#alias -s sh="sh"
#alias -s zsh="zsh"
