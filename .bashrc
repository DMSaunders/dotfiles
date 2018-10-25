
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

## PS1 stuff
#-----------
#?
#PS1='\h:\W \u\$ '

#for git prompt
export GIT_PS1_SHOWDIRTYSTATE=1 # unstaged (*) and staged (+) changes will be shown next to the branch name
export GIT_PS1_SHOWSTASHSTATE=1 # If something is stashed, then a '$' will be shown next to the branch name
export GIT_PS1_SHOWUNTRACKEDFILES=1  # appears after branch as %
export GIT_PS1_SHOWUPSTREAM="auto" # difference between HEAD and its upstream. A "<" indicates you are behind, ">" indicates you are ahead, "<>" indicates you have diverged and "=" indicates that there is no difference.
export GIT_PS1_SHOWCOLORHINTS=1  # colors are based on the colored output of "git status -sb"

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
alias ..='cd ..'


#git autocomplete
source ~/.git-completion.bash

