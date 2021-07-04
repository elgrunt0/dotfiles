####################
# ALIASES
####################
alias ls='ls --color=always -GlahF'
alias ldir='ls -l --color=always | grep -e "^d"'  # list only directories
alias cls='clear'

####################
# PROMPT
####################
export PS1="\n${debian_chroot:+($debian_chroot)}\[\e[0;36m\][\[\e[1;33m\]\t\[\e[0;36m\]][\[\e[1;33m\]\u\[\e[1;36m\]@\[\e[1;33m\]\h\[\e[0;36m\]][\[\e[1;34m\]\w\[\e[0;36m\]]\[\e[0m\]\n>"

####################
# SETTINGS
####################
shopt -s checkwinsize
shopt -s cdspell
shopt -s histappend
shopt -s expand_aliases
shopt -s lithist
shopt -s extglob
set show-all-if-ambiguous on

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
export HISTIGNORE="&:ls:[bf]g:[cb]d:b:exit:[ ]*"
export HISTSIZE=99999

## COPIED FROM DEBIAN DEFAULT .bashrc #################

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

#add user bin to path
export PATH="$HOME/.local/bin:$PATH"
