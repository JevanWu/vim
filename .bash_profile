#
#~/.bash_profile
#

export PS1="\[\e[0;33m\]\u\[\e[m\]@\[\e[0;34m\]\h\[\e[m\]:\w\[\e[0;32m\]\$(__git_ps1 '(%s)')\[\e[m\]\n\[\e[0;35m\]$\[\e[m\] "
export EDITOR=vim
export CLICOLOR=1
# export LC_CTYPE=zh_CN

# Bash completion for mac
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
    fi

# fix brew path
PATH="/usr/local/bin:$PATH"

[[ -f ~/.bashrc ]] && . ~/.bashrc

alias projects='cd /Users/jevan/Documents/rails_projects/'
alias work='cd /Users/jevan/Documents/rails_projects/bluebuck'
alias calculate='ruby /Users/jevan/Documents/rails_projects/price_calculator.rb'
alias gb="github"
alias gp="git push origin"
alias gp="git pull --rebase origin"
alias rails_ctags="ctags -f ./.git/tags . \$(bundle list --paths)"
alias make_ctags="ctags ."

ssh-add -A 2>/dev/null;

source ~/.profile

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# export PATH="/usr/local/opt/openssl/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# pyenv for Python version controlling
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
