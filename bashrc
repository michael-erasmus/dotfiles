PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
alias s='rails s'
alias c='rails c'
 
alias dotfiles='cd ~/dotfiles'
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

if [ -e ~/.bashrc_local ]; then
  source ~/.bashrc_local
fi

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#run this if not installed - curl https://raw.github.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export PS1="\w\033[32m\] \$(parse_git_branch)\[\033[00m\] $ "
