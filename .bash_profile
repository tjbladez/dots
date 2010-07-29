
export LC_CTYPE=en_US.UTF-8


set completion=ignore-case on

# add macports to path
PATH="/opt/local/bin:/opt/local/sbin:${PATH}"

# add the Apple new and improved Ruby bin directory for gems
PATH="${PATH}:/Library/Ruby/bin"

export RUBY_HEAP_MIN_SLOTS="500000"
export RUBY_HEAP_SLOTS_INCREMENT="250000"
export RUBY_HEAP_SLOTS_GROWTH_FACTOR="1"
export RUBY_GC_MALLOC_LIMIT="50000000"

# add local directories
PATH="/opt/local/lib/postgresql84/bin:${PATH}"

PATH="/opt/local/libexec/git-core:${PATH}"
PATH="/usr/local:${PATH}"
PATH="/usr/local/lib:${PATH}"
PATH="/opt/ruby-enterprise/bin:${PATH}"
PATH="/Users/nschwarz/mongo/mongodb-osx-x86_64-2010-05-03/bin:${PATH}"
export PATH

# CDPATH="/Users/nschwarz/Projects"

# Manpath
MANPATH="/opt/local/man:/usr/local/share/man:/usr/share/man:${MANPATH}"
export MANPATH

# Rake Completion
#complete -C /Users/nschwarz/bin/rake_completion.rb -o default rake

# Aliases
alias ls='ls -al'
alias irb='irb --readline -r irb/completion'

# Rails
alias ss='./script/server'
alias sc='./script/console'
alias sg='./script/generate'
alias sd='./script/destroy'
# TextMate
alias m='mate'
alias mp='mate app config lib db public test vendor/plugins'

# Git
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff | mate'
alias gdc="git diff --cached | mate"
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'

#export GIT_EDITOR="/Users/nschwarz/Code/bin/mate -w"
export GIT_EDITOR="/usr/bin/vim"
export EDITOR="/usr/bin/vim"

alias rakese='rake test:seleniums'
alias rakeseff='rake test:seleniums BROWSER=firefox'
alias rakeseie='rake test:seleniums BROWSER=ie'
alias rakef='rake test:functionals'
alias rakeu='rake test:units'
alias agent=' eval $(ssh-agent)'
alias mms='cd ~/Code/mms'
alias fin='cd ~/Code/finance'
alias ui='cd ~/Code/milkshake/apps/transis-ui'
alias milkshake='cd ~/Code/milkshake'
function f () { grep -ir -e "$1" * | grep -v "\.log" | grep -v "\.svn"; }


# Setup bash-completion if it's present - this has to remain at the end of profile
if [ -f /opt/local/etc/bash_completion ]; then
  . /opt/local/etc/bash_completion
fi

[ -f ~/.git-bash-completion.sh ] && . ~/.git-bash-completion.sh
if [[ -s /Users/nschwarz/.rvm/scripts/rvm ]] ; then source /Users/nschwarz/.rvm/scripts/rvm ; fi

