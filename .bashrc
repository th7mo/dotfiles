if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Start Xorg server after login
if [ -z $DISPLAY ] && [ "${XDG_VTNR}" -eq 1 ]; then
	startx
fi

# Git branch in shell
source /usr/share/git/git-prompt.sh
export PS1='\[\033[01;32m\]\u\[\033[01;34m\] \W\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '
export GIT_PS1_SHOWDIRTYSTATE=1
