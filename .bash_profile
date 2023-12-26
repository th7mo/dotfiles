if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi

# This adds the ssh key for GitHub to the keychain (see: https://wiki.gentoo.org/wiki/Keychain).
keychain ~/.ssh/id_ed25519
keychain ~/.ssh/id_ed25519_work
. ~/.keychain/${HOSTNAME}-sh
