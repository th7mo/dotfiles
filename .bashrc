if [[ $- != *i* ]] ; then
	return
fi

# Start Xorg server after login
if [ -z $DISPLAY ] && [ "${XDG_VTNR}" -eq 1 ]; then
	startx
fi

export PS1='\[\033[01;34m\]\w $ \[\033[00m\]'
PATH=$PATH:/opt/audiorelay/bin:/usr/local/bin/ltex-ls-16.0.0/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
