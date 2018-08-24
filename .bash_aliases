alias mysudo='sudo -E env "PATH=$PATH"'

alias full-upgrade='sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade'

alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'

alias tgz='tar -zxvf'
alias tbz='tar -jxvf'

alias git-pull-rebase='git pull --rebase'

function git-push-rebase() { git reset --soft origin && git commit -m "$@" && git push }

alias git-update-all='find . -name .git -type d | xargs -n1 -P4 -I% git --git-dir=% --work-tree=%/.. remote update -p'

alias git-checkout-all='find . -name .git -type d | xargs -n1 -P4 -I% git --git-dir=% --work-tree=%/.. checkout master'

alias git-pull-all='find . -name .git -type d | xargs -n1 -P4 -I% git --git-dir=% --work-tree=%/.. pull --rebase'

alias git-push-all='find . -name .git -type d | xargs -n1 -P4 -I% git --git-dir=% --work-tree=%/.. push'

alias git-push-dry-all='find . -name .git -type d | xargs -n1 -P4 -I% git --git-dir=% --work-tree=%/.. push --dry-run'
