
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

## PS1 stuff
#-----------
#?
#PS1='\h:\W \u\$ '

#for git prompt
export GIT_PS1_SHOWDIRTYSTATE=1
# export PS1='\w$(__git_ps1 " (%s)")\$ '

#color
#export PS1="\e[0;31m[\u@\h \W]\$ \e[m "

# for color + git prompt
export PROMPT_COMMAND='PS1="\e[0;31m\w$(__git_ps1 " (%s)")\$ \e[m "'

# git prompt
source ~/.git-prompt.sh

#----------------------------------------

# Make bash check its window size after a process completes
shopt -s checkwinsize

[ -r "/etc/bashrc_$TERM_PROGRAM" ] && . "/etc/bashrc_$TERM_PROGRAM"

## aliases
alias ll='ls -lh'

#git autocomplete
source ~/.git-completion.bash

