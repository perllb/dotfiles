# ~/.bashrc

force_color_prompt=yes

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac


# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt


# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'





# CUSTOM PER ALIAS
alias rm='rm -i'
alias rmr='rm -I -r'
alias ..='cd ..'
alias ...='cd ..; cd ..'
alias ltr='ls -ltrh'
alias fs1p='cd /fs1/per/proj'
alias fs1s='cd /fs1/per/proj/scRNAseq'
alias wgsrun='singularity exec --bind /fs1 /fs1/resources/containers/wgs_active.sif'
alias sq='squeue -o "%8i %12u %.8M %30j %3t %12P %.5Q %.6m %2C %6E %13R" --sort=-S,p,i'
alias sqp='sq | grep per'
alias sqr="sq | grep ' RUNNING'"
alias sac='sacct'
alias sacr='sacct | grep RUNNING'
alias psaux=' ps aux | grep per'
alias pscut=' ps aux | grep per | cut -b 1-100'
alias mlnext='ml Java; ml nextflow/19.04.1; ml singularity'
alias Nova='cd /fs1/seqdata/NovaSeq'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/sw/easybuild/software/Core/Miniconda3/4.5.12/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/sw/easybuild/software/Core/Miniconda3/4.5.12/etc/profile.d/conda.sh" ]; then
        . "/sw/easybuild/software/Core/Miniconda3/4.5.12/etc/profile.d/conda.sh"
    else
        export PATH="/sw/easybuild/software/Core/Miniconda3/4.5.12/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# load common modules
ml Java; ml nextflow/19.04.1; ml singularity



