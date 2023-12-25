if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi

# This adds the ssh key for GitHub to the keychain.
keychain ~/.ssh/id_ed25519
. ~/.keychain/${HOSTNAME}-sh
. ~/.keychain/${HOSTNAME}-sh-gpg
