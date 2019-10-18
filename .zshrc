# zsh history
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE

setopt hist_ignore_all_dups # Remove older duplicate entries from history
setopt hist_reduce_blanks   # Remove superfluous blanks from history items
setopt inc_append_history   # Save history entries as soon as they are entered
setopt share_history        # Share history between different instances of the shell


eval "$(nodenv init -)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(fasd --init auto)"